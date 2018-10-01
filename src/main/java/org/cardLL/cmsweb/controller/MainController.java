package org.cardLL.cmsweb.controller;

import java.math.BigInteger;
import java.security.Principal;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cardLL.cmsweb.authentication.MyUserDetailsService;
import org.cardLL.cmsweb.entity.CardProcess;
import org.cardLL.cmsweb.entity.ChargeAccount;
import org.cardLL.cmsweb.entity.User;
import org.cardLL.cmsweb.model.UserInfo;
import org.cardLL.cmsweb.service.CardProcessService;
import org.cardLL.cmsweb.service.ChargeAccountServices;
import org.cardLL.cmsweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Transactional
public class MainController {

	@Autowired
	CardProcessService cardProcessService;

	@Autowired
	UserService userService;

	@Autowired
	ChargeAccountServices chargeAccountServices;

	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String welcomePage(Model model) {
		model.addAttribute("title", "Welcome");
		model.addAttribute("message", "This is welcome page!");
		return "welcomePage";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage(Model model, Principal principal) {
		String userName = principal.getName();

		model.addAttribute("username", userName);
		model.addAttribute("listUser", userService.getListUserByRole("USER"));

		return "adminPage";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model) {

		return "loginPage";
	}

	@RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
	public String logoutSuccessfulPage(Model model) {
		model.addAttribute("title", "Logout");
		return "welcomePage";
	}

	@RequestMapping(value = "/userInfo", method = RequestMethod.GET)
	public String userInfo(Model model, Principal principal) {

		// Sau khi user login thanh cong se co principal
		String userName = principal.getName();
		User user = userService.findUserByUserName(userName);

		List<ChargeAccount> accList = chargeAccountServices.getListChargeAccountByUserName(userName);
		long totalleft = 0;
		long countnotCharged = 0;
		for (ChargeAccount cacc : accList) {
			totalleft += cacc.getLeftamount().longValue();
			if (cacc.getCompleted() != 1) {
				countnotCharged += 1;
			}
		}

		model.addAttribute("AccountList", accList);
		model.addAttribute("username", userName);
		model.addAttribute("balance", user.getBalance());
		model.addAttribute("uploadedacc", accList.size());
		model.addAttribute("countnotCharged", countnotCharged);
		model.addAttribute("totalleft", totalleft);
		model.addAttribute("uploadresult", "");

		return "userInfoPage";
	}

	@RequestMapping(value = "/getCardLists", method = RequestMethod.GET)
	public String getCardlists(Model model, Principal principal) {

		// Sau khi user login thanh cong se co principal
		String userName = principal.getName();
		System.out.println("User Name: " + userName);
		List<CardProcess> cardlist = cardProcessService.getcardlist();
		model.addAttribute("listcard", "Logout");
		model.addAttribute("uploadresult", "");

		return "userInfoPage";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {

		if (principal != null) {
			model.addAttribute("message",
					"Rất tiếc " + principal.getName() + "<br> Bạn không có quyền truy cập vào trang này!");
		} else {
			model.addAttribute("msg", "Bạn không có quyền truy cập vào trang này!");
		}
		return "403Page";
	}

	@RequestMapping(value = "/chargedetail_{receiveId}", method = RequestMethod.GET)
	public String userInfo(@PathVariable String receiveId, Model model, Principal principal,
			HttpServletResponse response) {
		System.out.println("fetching card for receive Id = " + receiveId);
		List<CardProcess> cardlist = cardProcessService.getChargeListForAccountId(Integer.valueOf(receiveId));
		long totalcharged = 0;
		for (CardProcess card : cardlist) {
			totalcharged += card.getCardvalue().longValueExact();
		}

		String userName = principal.getName();
		model.addAttribute("listcard", cardlist);
		model.addAttribute("username", userName);
		model.addAttribute("totalcardvalue", totalcharged);

		return "chargedetail";

	}

	// ReceiveMoneyFrom
	@RequestMapping(value = "/ReceiveMoneyFrom", method = RequestMethod.POST)
	public String receiveMoney(HttpServletRequest request,Model model, Principal principal) {
		Long amount = Long.valueOf(request.getParameter("amount"));
		String usernameDaily= request.getParameter("user");
		String message = request.getParameter("message");
		
		userService.transferMoneyToUser(usernameDaily,amount);
		
		String userName = principal.getName();

		model.addAttribute("username", userName);
		model.addAttribute("listUser", userService.getListUserByRole("USER"));

		return "adminPage";
	}
}