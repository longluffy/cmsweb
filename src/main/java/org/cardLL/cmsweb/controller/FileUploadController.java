package org.cardLL.cmsweb.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.nio.file.Files;
import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.cardLL.cmsweb.dao.UserInfoDAO;
import org.cardLL.cmsweb.entity.CardProcess;
import org.cardLL.cmsweb.entity.ChargeAccount;
import org.cardLL.cmsweb.entity.UserDocument;
import org.cardLL.cmsweb.model.TableResponseCardList;
import org.cardLL.cmsweb.model.TableResponseChargeAcc;
import org.cardLL.cmsweb.service.CardProcessService;
import org.cardLL.cmsweb.service.ChargeAccountServices;
import org.cardLL.cmsweb.service.UserDocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

@Controller
public class FileUploadController {

	@Autowired
	CardProcessService cardProcessService;

	@Autowired
	ChargeAccountServices chargeAccountServices;

	@Autowired
	UserInfoDAO userInfoDAO;

	@Autowired
	UserDocumentService userDocumentService;

	public static String rootPath = System.getProperty("catalina.home");
	public static String templatePath = rootPath + File.separator + "CMSFILES" + File.separator + "template.xlsx";
	/// downloadTemplate

	@RequestMapping(value = { "/downloadTemplate" }, method = RequestMethod.GET)
	public void downloadTemplate(HttpServletResponse response, Model model, Principal principal) throws IOException {
		// UserDocument document = userDocumentService.findById(docId);
		String userName = principal.getName();

		File template = new File(templatePath);
		response.setContentType("application/vnd.ms-excel");
		// response.setContentLength((int) template.length());
		response.setHeader("Content-Disposition",
				"attachment; filename=\"" + userName + "_" + java.time.LocalDate.now() + ".xlsx" + "\"");

		FileCopyUtils.copy(Files.readAllBytes(template.toPath()), response.getOutputStream());

//		List<CardProcess> cardlist = cardProcessService.getcardlist();
//		model.addAttribute("listcard", cardlist);
//		model.addAttribute("username", userName);
//
//		return "redirect:/userInfoPage";
	}

	/**
	 */
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public void uploadFileHandler(@RequestParam("file") MultipartFile file, Model model, Principal principal,
			HttpServletResponse response) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String userName = principal.getName();

				// Creating the directory to store file
				File dir = new File(rootPath + File.separator + userName + File.separator + java.time.LocalDate.now());
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				System.out.println("Server File Location=" + serverFile.getAbsolutePath());

				File resultFile = processExcelFile(serverFile, userName);

				response.setContentType(file.getContentType());
				// response.setContentLength((int) serverFile.length());
				response.setHeader("Content-Disposition", "attachment; filename=\"" + resultFile.getName() + "\"");

				FileCopyUtils.copy(Files.readAllBytes(resultFile.toPath()), response.getOutputStream());
				response.setStatus(403);
				response.getOutputStream().flush();
				response.getOutputStream().close();
				return;

			} catch (Exception e) {
				// return "redirect:/uploadResult_failed";
			}
		} else {

			try {
				response.sendRedirect("uploadResult_Failed");
				return;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	private File processExcelFile(File serverFile, String userName) throws IOException {

		try {

			FileInputStream inputfsIP = new FileInputStream(serverFile);
			XSSFWorkbook inputwb = new XSSFWorkbook(inputfsIP);
			XSSFSheet worksheet = inputwb.getSheetAt(0);

			Iterator<Row> rowIterator = worksheet.iterator();
			rowIterator.next();

			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();
				Cell accCell = row.getCell(1);
				Cell amountCell = row.getCell(2);
				String accstr = accCell.getStringCellValue();
				Long amount = (long) amountCell.getNumericCellValue();

				ChargeAccount ca = chargeAccountServices.getExistsChargeAccount(accstr);
				if (null == ca) {
					Cell resultCell = row.getCell(4);
					if (resultCell == null) {
						resultCell = row.createCell(4);
					}
					resultCell.setCellValue("Added OK");
					// add new todb
					ca = new ChargeAccount();
					ca.setAmount(BigInteger.valueOf(amount));
					ca.setPhonenumber(accstr);
					ca.setChargedamount(BigInteger.valueOf(0));
					ca.setCompleted(0);

					Calendar currenttime = Calendar.getInstance();
					Date sqldate = new java.sql.Date((currenttime.getTime()).getTime());
					ca.setDate(sqldate);
					ca.setLeftamount(ca.getAmount());
					ca.setUseradded(userName);
				} else {
					// update to db

					Cell resultCell = row.getCell(4);
					if (resultCell == null) {
						resultCell = row.createCell(4);
					}
					ca.setAmount(BigInteger.valueOf(amount));
					resultCell.setCellValue("update OK");

				}

				chargeAccountServices.saveChargeAccount(ca);

			}

			String resultFilePath = serverFile.getParentFile().getAbsolutePath() + File.separator + userName + "_"
					+ java.time.LocalDate.now() + "_result.xlsx";
			FileOutputStream output_file = new FileOutputStream(new File(resultFilePath));
			inputwb.write(output_file);
			output_file.close();
			inputwb.close();

			File resultFile = new File(resultFilePath);
			return resultFile;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;

	}

	@RequestMapping(value = "/uploadResult_{result}", method = RequestMethod.GET)
	public String userInfo(@PathVariable String resultMsg, Model model, Principal principal,
			HttpServletResponse response) {
//		UserDocument document = userDocumentService.findById(docId);
//
//		FileCopyUtils.copy(document.getContent(), response.getOutputStream());
//		response.setContentType("application/vnd.ms-excel");
//		response.setContentLength(document.getContent().length);
//		response.setHeader("Content-Disposition", "attachment; filename=\"" + document.getName() + "\"");
		// Sau khi user login thanh cong se co principal
		String userName = principal.getName();
		List<CardProcess> cardlist = cardProcessService.getcardlist();
		model.addAttribute("listcard", cardlist);
		model.addAttribute("username", userName);
		model.addAttribute("uploadresult", resultMsg);

		return "userInfoPage";
	}

	@RequestMapping(value = { "/download-document-{userId}-{docId}" }, method = RequestMethod.GET)
	public String downloadDocument(@PathVariable int userId, @PathVariable int docId, HttpServletResponse response)
			throws IOException {
		UserDocument document = userDocumentService.findById(docId);
		response.setContentType(document.getType());
		response.setContentLength(document.getContent().length);
		response.setHeader("Content-Disposition", "attachment; filename=\"" + document.getName() + "\"");

		FileCopyUtils.copy(document.getContent(), response.getOutputStream());

		return "redirect:/add-document-" + userId;
	}

	@RequestMapping(value = { "/getCardList" }, method = RequestMethod.GET)
	public void getcardlist(HttpServletResponse response, Model model, Principal principal) throws IOException {
		// UserDocument document = userDocumentService.findById(docId);
		String userName = principal.getName();

		List<ChargeAccount> accList = chargeAccountServices.getListChargeAccountByUserName(userName);

		TableResponseChargeAcc res = new TableResponseChargeAcc();
		for (ChargeAccount chargeAccount : accList) {
			res.setTotalAmount(res.getTotalAmount() + chargeAccount.getAmount().longValue());
			res.setTotalCharged(res.getTotalCharged() + chargeAccount.getChargedamount().longValue());
			res.setTotalLeft(res.getTotalLeft() + chargeAccount.getLeftamount().longValue());
		}

		res.setData(accList);
		response.setContentType("application/json");

		Gson gson = new Gson();

		String json = gson.toJson(res);
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}

	@RequestMapping(value = { "/getCardList" }, method = RequestMethod.POST)
	public void getcardlist1(HttpServletRequest request, HttpServletResponse response, Model model, Principal principal)
			throws IOException {
		String userName = principal.getName();
		String action = request.getParameter("action");
		String id = "";
		Map<String, String[]> parm = request.getParameterMap();
		ChargeAccount acc = new ChargeAccount();
		acc.setUseradded(userName);
		for (String key : parm.keySet()) {
			if (key.equalsIgnoreCase("action")) {
				continue;
			}
			if (id.isEmpty()) {
				id = key.substring(key.indexOf("[") + 1, key.indexOf("]"));
			}
			System.out.println(key);
			String propname = key.substring(key.indexOf("[", 6) + 1, key.lastIndexOf("]"));

			switch (propname) {
			case "phonenumber":
				acc.setPhonenumber(request.getParameter(key));
				break;

			case "amount":
				acc.setAmount(BigInteger.valueOf(Long.valueOf(request.getParameter(key))));
				break;

			default:
				break;
			}
		}

		Gson gson = new Gson();
		PrintWriter out = response.getWriter();

		if (acc.getAmount().mod(BigInteger.valueOf(50000)) != BigInteger.valueOf(0)) {
			response.sendError(422, "invalid_amount");
			return;
		}

		if ("create".equalsIgnoreCase(action)) {
			// create new charge account
			Calendar currenttime = Calendar.getInstance();
			Date sqldate = new Date((currenttime.getTime()).getTime());
			acc.setDate(sqldate);

			acc = chargeAccountServices.createChargeAccount(acc);
		} else {
			// update old account
			ChargeAccount exist = chargeAccountServices.getChargeAccountById(Integer.valueOf(id));

			if (exist.getChargedamount().compareTo(acc.getAmount()) < 0) {
				response.sendError(422, "invalid_amount");
			} else {
				exist.setAmount(acc.getAmount());
				acc = chargeAccountServices.updateChargeAccount(exist);

			}
		}

		List<ChargeAccount> accList = new ArrayList<ChargeAccount>();
		accList.add(acc);

		TableResponseChargeAcc res = new TableResponseChargeAcc();
		res.setData(accList);
		response.setContentType("application/json");

		String json = gson.toJson(res);
		out.print(json);
		out.flush();
	}

	@RequestMapping(value = { "/addSMASAccount" }, method = RequestMethod.POST)
	public void addSMASAccount(HttpServletRequest request, HttpServletResponse response, Model model,
			Principal principal) throws IOException {
		String userName = principal.getName();
		String action = request.getParameter("action");
		String id = "";
		Map<String, String[]> parm = request.getParameterMap();
		ChargeAccount acc = new ChargeAccount();
		acc.setUseradded(userName);
		for (String key : parm.keySet()) {
			if (key.equalsIgnoreCase("action")) {
				continue;
			}
			if (id.isEmpty()) {
				id = key.substring(key.indexOf("[") + 1, key.indexOf("]"));
			}
			System.out.println(key);
			String propname = key.substring(key.indexOf("[", 6) + 1, key.lastIndexOf("]"));

			switch (propname) {
			case "phonenumber":
				acc.setPhonenumber(request.getParameter(key));
				break;

			case "amount":
				acc.setAmount(BigInteger.valueOf(Long.valueOf(request.getParameter(key))));
				break;

			case "date":
//				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String datestr = request.getParameter(key);

				java.sql.Date date = null;
				date = java.sql.Date.valueOf(datestr);
				acc.setDate(date);
				break;
			default:
				break;
			}
		}

		if ("create".equalsIgnoreCase(action)) {
			// create new charge account
			acc = chargeAccountServices.createChargeAccount(acc);
		} else {
			// update old account
			acc.setId(Integer.valueOf(id));
			acc = chargeAccountServices.updateChargeAccount(acc);

		}

		List<ChargeAccount> accList = new ArrayList<ChargeAccount>();
		accList.add(acc);

		TableResponseChargeAcc res = new TableResponseChargeAcc();
		res.setData(accList);
		response.setContentType("application/json");

		Gson gson = new Gson();

		String json = gson.toJson(res);
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}

	@RequestMapping(value = { "/getCardListByProvider" }, method = RequestMethod.GET)
	public void getCardListByProvider(HttpServletResponse response, Model model, Principal principal)
			throws IOException {
		// UserDocument document = userDocumentService.findById(docId);
		String userName = principal.getName();

		List<CardProcess> accList = cardProcessService.getChargeListByUserAdded(userName);

		TableResponseCardList res = new TableResponseCardList();

		res.setData(accList);
		response.setContentType("application/json");

		Gson gson = new Gson();

		String json = gson.toJson(res);
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}

}