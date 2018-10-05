package org.cardLL.cmsweb.service;

import java.util.List;

import org.cardLL.cmsweb.dao.CardProcessDAO;
import org.cardLL.cmsweb.entity.CardProcess;
import org.cardLL.cmsweb.entity.sumInfoObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CardProcessService {

	@Autowired
	private CardProcessDAO cardProcessDAO;

	public List<CardProcess> getcardlist() {
		return cardProcessDAO.getAllCardProcess();
	}

	public List<CardProcess> getChargeListForAccountId(int id) {
		// TODO Auto-generated method stub
		return cardProcessDAO.getChargeListForAccountId(id);
	}

	public List<CardProcess> getChargeListByProviderName(int id) {
		// TODO Auto-generated method stub
		return cardProcessDAO.getChargeListForAccountId(id);
	}

	public List<CardProcess> getChargeListByUserAdded(String username) {
		// TODO Auto-generated method stub
		return cardProcessDAO.getChargeListByUserAdded(username);
	}

	public sumInfoObj getStatisticAll(String userName) {
		return cardProcessDAO.getStatisticAll(userName);
	}

	public sumInfoObj getStatisticSuccess(String username) {
		return cardProcessDAO.getStatisticSuccess(username);
	}

	public sumInfoObj getStatisticFailed(String username) {
		return cardProcessDAO.getStatisticFailed(username);
	}

}
