package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();//상품 목록을 저장하기 위한 ArrayList<Product> 객체 타입의 변수 listOfProducts를 작성한다.
	private static ProductRepository instance = new ProductRepository(); //ProductRepository 클래스의 기본 생성자에 대한 객체 변수 instance를 작성한다.
	
	public static ProductRepository getInstance() {
		return instance;
	} //객체 변수 instance에 대한 Getter() 메소드를 작성한다.
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1236.png");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		phone.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa Core processors");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		phone.setFilename("P1234.png");
	
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}//11~36 : 기본 생성자를 만든 후 3개의 상품 정보를 설정하고 ArrayList<Product> 객체 타입의 변수 listOfProducts에 저장하도록 작성한다.
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}//객체 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져오는 getAllProduct()메소드를 작성한다.
	
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
	} //43~54 : 객체 변수 listOfProducts에 저장된 모든 상품 목록에서 상품 아이디와 일치하는 상품을 가져오는 getProductById() 메소드를 작성한다.
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	} //객체 변수 listOfProducts에 새로운 상품 정보를 등록하는 addProduct() 메소드를 작성한다.
}