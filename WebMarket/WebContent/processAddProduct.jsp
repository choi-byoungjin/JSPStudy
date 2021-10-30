<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");	//폼 페이지에서 입력된 데이터를 서버로 전송할 때 한글이 깨지지 않도록 문자 인코딩 유형을 utf-8로 하여 request 내장 객체의 setCharacterEncoding()메소드를 작성한다.

	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");	//8~15 : 폼 페이지에서 입력된 상품 아이디, 상품명, 가격, 설명, 제조사, 분류, 재고 수, 상품 상태 등의 값을 얻어오도록 요청 파라미터 이름 productId 등으로 request 내장 객체의 getParameter()메소드를 작성한다.
	
	Integer price;
	
	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);		//17~22 : 폼 페이지에서 상품 가격이 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경하도록 작성한다.
	
	long stock;
	
	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);		//24~29 : 폼 페이지에서 상품 재고 수가 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경하도록 작성한다.
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	
	dao.addProduct(newProduct);		//31~43 : 폼 페이지에서 입력된 데이터를 저장하도록 ProductRepository 클래스의 addProduct()메소드를 호출한다.
	
	response.sendRedirect("products.jsp");		//products.jsp 페이지로 강제 이동하도록 response 내장 객체의 sendRedirect() 메소드를 작성한다.
%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>