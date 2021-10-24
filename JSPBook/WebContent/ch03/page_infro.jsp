<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ page info="Date 클래스를 이용한 날짜 출력하기" %>
	<p> Hello, Java Server Pages. </p>
	현재 시간 : <%=new java.util.Date() %>
</body>
</html>