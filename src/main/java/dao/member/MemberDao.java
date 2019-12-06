package dao.member;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import dao.DaoImpl;
import model.Member;

public class MemberDao implements DaoImpl {
	public static void main(String[] args) {
		// 設定管理員帳號
		/*
		Member WMM = new Member();
		WMM.setName("WebManager");
		WMM.setUser("WMM");
		WMM.setPassword("1234");
		new MemberDao().add(WMM);
		*/
		/*
		// test add
		for (int i = 0; i < 10; i++) {
			Member mm = new Member();
			mm.setUser("test00" + i);
			new MemberDao().add(mm);
		}
		// test query

		List<Object> ll = new MemberDao().queryHql("from Member where id=1");
		Member[] mm = ll.toArray(new Member[0]);
		System.out.println(mm[0].getUser());

		// test update
		Member mm = new Member();
		mm.setName("Wu");
		mm.setPassword("1234");
		mm.setMobile("0935");
		mm.setPhone("2270");
		mm.setAddress("NTP");
		new MemberDao().update(1, mm);

		// test delete
		new MemberDao().delete(7);
		*/
	}
	@Override
	public void add(Object o) {
		Session se = DaoImpl.getSession();
		Transaction tx = se.beginTransaction();
		se.save(o);
		tx.commit();
		se.close();
	}

	@Override
	public void delete(Integer id) {
		Session se = DaoImpl.getSession();
		Transaction tx = se.beginTransaction();

		List<Object> ll = new MemberDao().queryHql("from Member where id=" + id);
		Member[] mm = ll.toArray(new Member[0]);

		se.delete(mm[0]);
		tx.commit();
		se.close();
	}

	@Override
	public void update(Integer id, Object o) {
		Session se = DaoImpl.getSession();
		Transaction tx = se.beginTransaction();
		Member mUpdate = (Member) o;

		List<Object> ll = new MemberDao().queryHql("from Member where id=" + id);
		Member[] mm = ll.toArray(new Member[0]);

		mm[0].setName(mUpdate.getName());
		mm[0].setPassword(mUpdate.getPassword());
		mm[0].setMobile(mUpdate.getMobile());
		mm[0].setPhone(mUpdate.getPhone());
		mm[0].setAddress(mUpdate.getAddress());

		se.update(mm[0]);
		tx.commit();
		se.close();
	}

	@Override
	public List<Object> queryHql(String hql) {
		Query q = DaoImpl.getSession().createQuery(hql);
		List<Object> l = q.list();

		return l;
	}

	@Override
	public List<Object> querySql(String sql) {
		Query q = DaoImpl.getSession().createSQLQuery(sql);
		List<Object> l = q.list();

		return l;
	}
}
