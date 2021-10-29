<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %> <!-- 생성한 상품 클래스 dto.Product 패키지를 사용하기 위해 page 디렉티브 태그의 import 속성을 작성한다. -->
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /><!-- 자바빈즈로 생성한 ProductRepository 클래스를 사용하도록 useBean 액션 태그를 작성한다. -->
<html>
<head>
<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" /> <!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 디렉티브 태그를 작성한다. -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id"); //상품 목록 페이지로부터 전달되는 상품 아이디를 전송받도록 request 내장 객체의 getParameter() 메소드를 작성한다.
		Product product = productDAO.getProductById(id); //useBean 액션 태그에 id 속성 값을 통해 ProdutRepository 클래스의 getProductById() 메소드를 호출하여 반환된 결과 값을 Product 객체 타입의 변수 product에 저장하도록 작성한다.
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p> <b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId() %></span>
				<p> <b>제조사</b> : <%=product.getMenufacturer() %>
				<p> <b>분류</b> : <%=product.getCategory() %>
				<p> <b>재고 수</b> : <%=product.getUnitsInStock() %>
				<h4><%=product.getUnitPrice()%>원</h4> <!-- 23~29 : Product 객체 타입의 변수 product에 저장된 상품명 상품 상세 정보, 상품 코드, 제조사, 분류, 재고 수, 상품 가격 등을 출력하도록 표현문 태그를 작성한다.  -->
				<p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a> <!-- 상품 주문, 상품 목록 버튼을 작성한다. -->
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>