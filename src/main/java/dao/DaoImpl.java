package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public interface DaoImpl {
	static Session getSession() {
		Configuration con = new Configuration().configure();
		SessionFactory sf = con.buildSessionFactory();
		Session se = sf.openSession();
		return se;
	}
	void add(Object o);
	List<Object> queryHql(String hql);
	List<Object> querySql(String sql);
	void delete(Integer id);
	void update(Integer id,Object o);
	
}
