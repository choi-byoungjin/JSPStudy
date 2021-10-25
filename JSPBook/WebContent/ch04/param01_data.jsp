<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p> 아이디 : <%=request.getParameter("id")%>
	<%
		String name = request.getParameter("name");//전송된 id 값과 name 값을 받도록 request 내작 객체의 getParameter()메소드를 작성한다.
	%>
	<p> 이 름 : <%=java.net.URLDecoder.decode(name)%> <!-- 값을 출력하도록 표현문 태그를 작성한다. -->
</body>
</html>