package org.cardLL.cmsweb.service;

import java.math.BigInteger;
import java.util.List;

import org.apache.xmlbeans.impl.values.JavaBase64Holder;
import org.cardLL.cmsweb.dao.CardProcessDAO;
import org.cardLL.cmsweb.dao.ChargeAccountDAO;
import org.cardLL.cmsweb.dao.UserInfoDAO;
import org.cardLL.cmsweb.entity.CardProcess;
import org.cardLL.cmsweb.entity.ChargeAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ChargeAccountServices {
	@Autowired
	private CardProcessDAO cardProcessDAO;
	
	@Autowired
	private ChargeAccountDAO chargeAccountDAO;
	
	public List<ChargeAccount> getListChargeAccountByUserName(String userName) {
		// TODO Auto-generated method stub
		return chargeAccountDAO.getListChargeAccountByUserName(userName);

	}
	
	public ChargeAccount createChargeAccount(ChargeAccount acc) {
		acc.setChargedamount(BigInteger.valueOf(0l));
		acc.setLeftamount(acc.getAmount());
		return chargeAccountDAO.createChargeAccount(acc);
		// TODO Auto-generated method stub
		
		
	}

	public ChargeAccount updateChargeAccount(ChargeAccount acc) {
		ChargeAccount ca = getChargeAccountById(acc.getId());
		ca.setAmount(acc.getAmount());
		ca.setLeftamount(ca.getAmount().subtract(ca.getChargedamount()));
		ca.setAccounttype(acc.getAccounttype());

		return chargeAccountDAO.updateChargeAccount(ca);
	}
	
	private ChargeAccount getChargeAccountById(int id) {
		
		return chargeAccountDAO.getChargeAccountById(id);
	}

	public ChargeAccount getExistsChargeAccount(String accstr) {

		return chargeAccountDAO.getExistsChargeAccount(accstr);
	}

	public void saveChargeAccount(ChargeAccount ca) {
		chargeAccountDAO.saveChargeAccount(ca);
	}



	
}
