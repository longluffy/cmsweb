package org.cardLL.cmsweb.dao;

import java.util.List;

import org.cardLL.cmsweb.entity.CardProcess;
import org.cardLL.cmsweb.entity.User;
import org.cardLL.cmsweb.entity.UserRole;
import org.cardLL.cmsweb.model.UserInfo;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDAO() {

	}

	public UserInfo findUserInfo(String userName) {
		String sql = "Select new " + UserInfo.class.getName() + "(u.username,u.password) "//
				+ " from " + User.class.getName() + " u where u.username = :username ";

		Session session = sessionFactory.getCurrentSession();

		Query query = session.createQuery(sql);
		query.setParameter("username", userName);

		return (UserInfo) query.uniqueResult();
	}

	public List<String> getUserRoles(String userName) {
		String sql = "Select r.userRole "//
				+ " from " + UserRole.class.getName() + " r where r.user.username = :username ";

		Session session = sessionFactory.getCurrentSession();

		Query query = session.createQuery(sql);
		query.setParameter("username", userName);

		List<String> roles = query.list();

		return roles;
	}

	public User getUserByUserName(String userName) {

		Session session = sessionFactory.getCurrentSession();
		Criteria cr = session.createCriteria(User.class);
		cr.add(Restrictions.eq("enabled", 1));
		cr.add(Restrictions.eq("username", userName));
		User result = (User) cr.uniqueResult();

		return result;

	}

	public List<UserRole> getListUserByRole(String role) {
		Session session = sessionFactory.getCurrentSession();
		Criteria cr = session.createCriteria(UserRole.class);
		cr.add(Restrictions.eq("userRole", role));
		List<UserRole> result = cr.list();

		return result;
	}

	public void saveUser(User receiver) {
		Session session = sessionFactory.getCurrentSession();
		session.save(receiver);
		
	}

}