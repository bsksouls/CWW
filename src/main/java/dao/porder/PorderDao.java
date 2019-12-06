package dao.porder;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import dao.DaoImpl;
import dao.member.MemberDao;
import model.Member;
import model.Porder;

public class PorderDao implements DaoImpl{

	public static void main(String[] args) {
		//test add
		/*
		for(int i=0;i<10;i++) {
			Porder p = new Porder();
			p.setPro1(i);
			new PorderDao().add(p);
		}
		*/
		//test query
		/*
		List<Object> ll = new PorderDao().queryHql("FROM Porder WHERE name='CCW'");
		Porder[] pp = ll.toArray(new Porder[0]);
		System.out.println(pp[0].getName()+"Sum:"+pp[0].getSum());
		*/
		//test update
		/*
		Porder pp = new Porder();
		pp.setName("CWW");
		pp.setPro2(30);
		new PorderDao().update(10, pp);
		*/
		//test delete
		/*
		new PorderDao().delete(12);
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

		List<Object> ll = new PorderDao().queryHql("from Porder where id=" + id);
		Porder[] pp = ll.toArray(new Porder[0]);
		
		se.delete(pp[0]);
		tx.commit();
		se.close();
	}

	@Override
	public void update(Integer id, Object o) {
		Session se = DaoImpl.getSession();
		Transaction tx = se.beginTransaction();
		Porder pUpdate = (Porder) o;
		
		List<Object> ll = new PorderDao().queryHql("from Porder where id=" + id);
		Porder[] pp = ll.toArray(new Porder[0]);
		
		
		pp[0].setName(pUpdate.getName());
		pp[0].setPro1(pUpdate.getPro1());
		pp[0].setPro2(pUpdate.getPro2());
		pp[0].setPro3(pUpdate.getPro3());
		pp[0].setSum(pUpdate.getSum());
		
		se.update(pp[0]);
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
