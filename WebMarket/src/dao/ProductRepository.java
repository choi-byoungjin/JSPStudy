package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();//��ǰ ����� �����ϱ� ���� ArrayList<Product> ��ü Ÿ���� ���� listOfProducts�� �ۼ��Ѵ�.
	private static ProductRepository instance = new ProductRepository(); //ProductRepository Ŭ������ �⺻ �����ڿ� ���� ��ü ���� instance�� �ۼ��Ѵ�.
	
	public static ProductRepository getInstance() {
		return instance;
	} //��ü ���� instance�� ���� Getter() �޼ҵ带 �ۼ��Ѵ�.
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa Core processors");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
	
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}//11~36 : �⺻ �����ڸ� ���� �� 3���� ��ǰ ������ �����ϰ� ArrayList<Product> ��ü Ÿ���� ���� listOfProducts�� �����ϵ��� �ۼ��Ѵ�.
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}//��ü Ÿ���� ���� listOfProducts�� ����� ��� ��ǰ ����� �������� getAllProduct()�޼ҵ带 �ۼ��Ѵ�.
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	} //43~54 : ��ü ���� listOfProducts�� ����� ��� ��ǰ ��Ͽ��� ��ǰ ���̵�� ��ġ�ϴ� ��ǰ�� �������� getProductById() �޼ҵ带 �ۼ��Ѵ�.
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	} //��ü ���� listOfProducts�� ���ο� ��ǰ ������ ����ϴ� addProduct() �޼ҵ带 �ۼ��Ѵ�.
}