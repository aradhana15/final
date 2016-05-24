package packs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import packs.model.Member;
import packs.model.Product;
import packs.model.UserTable;

@Repository
public class ProductDAO implements ProductDAOInterface {
	List<Product> ob;
	List<Member> member;
	List<UserTable> user;
	@Autowired
    SessionFactory sf;
	Session sess;
	public ProductDAO() {
		ob=new ArrayList<Product>();
		member =new ArrayList<Member>();
		user=new ArrayList<UserTable>();
	}
	
	public List<Product> getAllProducts() {
		sess=sf.openSession();
		Query q=sess.createQuery("from Product");
		ob=q.list();
		return ob;
	}
	
	public List<Product> getLastID()
	{
		sess=sf.openSession();
		Query q=sess.createQuery("select p from Product p where p.id=(select max(id) from Product)");
		return q.list();
	}
	@Override
	public Product getProductById(int pro) {
		Product p;
		
			sess=sf.openSession();
			p=(Product) sess.get(Product.class,new Integer(pro));
			return p;
	}

	@Override
	public int addNewProduct(Product p) {
		sess=sf.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		return 1;
	}
	
	public int addNewMember(Member m) {
		sess=sf.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(m);
		tx.commit();
		
		return 1;
	}
	public void addNewUser(Member ob)
	{
		sess=sf.openSession();
		Transaction tx=sess.beginTransaction();
	   UserTable yt=new UserTable();
	   //yt.setUid(ob.getCid());
	   yt.setUname(ob.getCname());
	   yt.setUpassword(ob.getCpassword());
	   yt.setUtype(ob.getCtype());
	   sess.save(yt);
	   tx.commit();
	}

	public boolean deleteProduct(int id)
	{
		sess=sf.openSession();
		Transaction tx=sess.beginTransaction();
		Product p=(Product) sess.get(Product.class, new Integer(id));
		sess.delete(p);
		sess.flush();
		tx.commit();
		return true;
	}
}
