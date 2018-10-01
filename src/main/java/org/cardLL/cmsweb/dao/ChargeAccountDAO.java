package org.cardLL.cmsweb.dao;

import java.util.List;

import org.cardLL.cmsweb.entity.ChargeAccount;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ChargeAccountDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public ChargeAccountDAO() {

	}

	public ChargeAccount getExistsChargeAccount(String accstr) {

		try {

			Session session = sessionFactory.getCurrentSession();
			Criteria cr = session.createCriteria(ChargeAccount.class);
			cr.add(Restrictions.eq("completed", 0));
			cr.add(Restrictions.eq("phonenumber", accstr));

			List<ChargeAccount> result = cr.list();

			if (result.isEmpty()) {
				return null;
			} else {
				return result.get(0);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	public void saveChargeAccount(ChargeAccount ca) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(ca);
		session.flush();

	}

	public List<ChargeAccount> getListChargeAccountByUserName(String userName) {
		try {

			Session session = sessionFactory.getCurrentSession();
			Criteria cr = session.createCriteria(ChargeAccount.class);
			cr.add(Restrictions.eq("useradded", userName));
			cr.addOrder(Order.asc("date"));
			List<ChargeAccount> result = cr.list();

			return result;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	public ChargeAccount createChargeAccount(ChargeAccount acc) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(acc);
		session.flush();
		return acc;
	}

	public ChargeAccount updateChargeAccount(ChargeAccount acc) {
		Session session = sessionFactory.getCurrentSession();
		session.update(acc);
		session.flush();
		return acc;
	}

	public ChargeAccount getChargeAccountById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria cr = session.createCriteria(ChargeAccount.class);
		cr.add(Restrictions.eq("id", id));
		List<ChargeAccount> result = cr.list();
		return result.get(0);
	}

}
