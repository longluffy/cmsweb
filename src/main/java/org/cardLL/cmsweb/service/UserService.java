package org.cardLL.cmsweb.service;

import java.util.List;

import org.cardLL.cmsweb.dao.UserDAO;
import org.cardLL.cmsweb.entity.User;
import org.cardLL.cmsweb.entity.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserDAO userDAO;

	public User findUserByUserName(String userName) {
		return userDAO.getUserByUserName(userName);
	}

	public List<UserRole> getListUserByRole(String role) {
		return userDAO.getListUserByRole(role);
	}

	public void transferMoneyToUser(String usernameDaily, Long amount) {
		User receiver = findUserByUserName(usernameDaily);
		receiver.setBalance(receiver.getBalance()+amount);
		
		userDAO.saveUser(receiver);
		

	}

}
