<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>						<!-- Enumeration 클래스 사용 -->
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%
	request.setCharacterEncoding("UTF-8");	//폼 페이지에서 입력된 데이터를 서버로 전송할 때 한글이 깨지지 않도록 문자 인코딩 유형을 utf-8로 하여 request 내장 객체의 setCharacterEncoding()메소드를 작성한다.

	String filename = "";
	String realFolder = "C:\\upload";	//웹 애플리케이션상의 절대 경로
	int maxSize = 5 * 1024 * 1024;		//최대 업로드될 파일의 크기 5MB
	String encType = "utf-8";			//인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");			//17~24 : 폼 페이지에서 입력된 요청 파라미터 값을 얻어오도록 요청 파라미터의 이름을 설정하여 MultipartRequest 객체 타입의 getParameter()메소드를 작성한다.
	
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
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
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
	newProduct.setFilename(filename);
	
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