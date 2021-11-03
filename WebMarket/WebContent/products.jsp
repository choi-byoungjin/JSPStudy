<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %> <!-- java.util.ArrayList 패키지를 사용하기 위해 page 디렉티브 태그의 import 속성을 작성한다. -->
<%@ page import="dto.Product" %> <!-- 생성된 상품 클래스 dto.Product 패키지를 사용하기 위해 page 디렉티브 태그의 import 속성을 작성한다. -->
<%@ page import="dao.ProductRepository" %> <!-- 기존에 작성된 useBean 액션 태그를 삭제하고 상품 접근 틀래스 dao.ProductRepository 패키지로 변경한다. 이때 상품 접근 클래스 dao.ProductRepository 패키지를 사용하기 위해 page 디렉티브 태그의 import 속성을 작성한다. -->
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" /> <!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 디렉티브 태그를 작성한다. -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%> <!-- ProductRepository 클래스의 객체 변수 instance를 호출하는 getInstance() 메소드를 작성한다. 이를 통해 getAllProducts() 메소드를 호출하여 반환 결과 값을 ArrayList<Product>객체 타입의 변수 listOfProducts에 저장한다. -->
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i < listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
			%> <!-- 22~25 : 객체 타입의 변수 listOfProducts에 저장된 상품 목록 개수만큼 실행하도록 반복문을 작성한다. 24행은 상품 정보를 가져와 Product에 저장하도록 작성한다. -->
			<div class="col-md-4">
				<img src="./resources/images/<%=product.getFilename() %>" style="width: 100%">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><%=product.getUnitPrice() %>원 <!-- Product 객체 타입의 변수 product에 저장된 상품명, 상품 상세 정보, 상품 가격을 출력하도록 표현문 태그를 작성한다. -->
				<p> <a href="./product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a> <!-- 상품 아이디에 대한 상세 정보 페이지가 연결되도록 <상세 정보> 버튼을 작성한다. -->
			</div>
			<%
				}
			%> <!-- 31~33 : 23행의 반복문 시작({)을 닫도록 스크립틀릿 태그를 작성한다. -->
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" /> <!-- 바닥글에 해당하는 footer.jsp 파일의 내용을 포함하도록 include 디렉티브 태그를 작성한다. -->
</body>
</html>