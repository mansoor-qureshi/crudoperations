package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {

	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
// to	create product
	@Transactional
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
// to get all products
	public List<Product> getProduct(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	// to delete single product;;;>
	@Transactional
	public void deleteProduct(int Pid) {
		Product p = this.hibernateTemplate.load(Product.class, Pid);
		this.hibernateTemplate.delete(p);
	}
	
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
		
	}
}
