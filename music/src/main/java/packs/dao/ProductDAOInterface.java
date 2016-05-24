package packs.dao;

import java.util.List;

import packs.model.Product;

public interface ProductDAOInterface {
	public List<Product> getAllProducts();
	public Product getProductById(int id);
	public int addNewProduct(Product p);
	public boolean deleteProduct(int id);
	
}
