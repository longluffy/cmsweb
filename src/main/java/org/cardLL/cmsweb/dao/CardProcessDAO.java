package org.cardLL.cmsweb.dao;

import java.util.List;

import org.cardLL.cmsweb.config.ApplicationContextConfig;
import org.cardLL.cmsweb.entity.User;
import org.cardLL.cmsweb.entity.UserRole;
import org.cardLL.cmsweb.entity.CardProcess;
import org.cardLL.cmsweb.entity.ChargeAccount;
import org.cardLL.cmsweb.model.UserInfo;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CardProcessDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CardProcessDAO() {

	}

	public List<CardProcess> getAllCardProcess() {

		Session session = sessionFactory.getCurrentSession();
		if (null == session) {
			session = sessionFactory.openSession();
		}

		Criteria cr = session.createCriteria(CardProcess.class);
		List<CardProcess> result = cr.list();
		return result;

	}



	public List<CardProcess> getChargeListForAccountId(int id) {
		// TODO Auto-generated method stub
		try {

			Session session = sessionFactory.getCurrentSession();
			Criteria cr = session.createCriteria(CardProcess.class);
			cr.add(Restrictions.eq("cardprocesssuccess", 1));
			cr.add(Restrictions.eq("chargedto", String.valueOf(id)));
			cr.addOrder(Order.desc("chargedtime"));
			List<CardProcess> result = cr.list();

			return result;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

}