package packs.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import packs.model.Member;
import packs.model.Product;




@Service
public class ServiceClass 
{
@Autowired 
ProductDAO p;


	public List<Product> getAllProducts() {
		return p.getAllProducts();
	}
	public Product getProductById(int id)
	{
		Product po=p.getProductById(id);
		return po;
	}
	public int addNewProduct(Product pp) {
			int x=p.addNewProduct(pp);
			return x;
	}
	public int addNewMember(Member mob) 
	{
		return p.addNewMember(mob);
		
	}
	public List<Product> getLastID()
	{
		return p.getAllProducts();
	}
	public void addNewUser(Member mob) 
	{
		p.addNewUser(mob);
		
	}
	
	public boolean deleteProduct(int id)
	{
		if(p.deleteProduct(id))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
