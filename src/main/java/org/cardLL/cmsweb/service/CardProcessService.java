package org.cardLL.cmsweb.service;

import java.util.List;

import org.cardLL.cmsweb.dao.CardProcessDAO;
import org.cardLL.cmsweb.dao.UserInfoDAO;
import org.cardLL.cmsweb.entity.CardProcess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardProcessService {

    @Autowired
    private UserInfoDAO userInfoDAO;
    
    @Autowired
    private CardProcessDAO cardProcessDAO;
    

	public List<CardProcess> getcardlist() {
		return cardProcessDAO.getAllCardProcess();
	}
    
    
    
    
}
