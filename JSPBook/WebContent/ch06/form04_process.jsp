<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //폼 페이지에서 입력된 데이터를 서버로 전송할 때 한글이 깨지지 않도록 문자 인코딩 유형을 utf-8로 하여 request 내장 객체의 setCharacterEncoding() 메소드를 작성한다.
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3"); //폼 페이지에서 입력된 연락처 값을 얻어오도록 요청 파라미터 이름 phone1, phone2, phone3으로 request 내장 객체의 getParameter() 메소드를 작성한다.
		String sex = request.getParameter("sex");
		String hobby1 = request.getParameter("hobby1");
		String hobby2 = request.getParameter("hobby2");
		String hobby3 = request.getParameter("hobby3"); //폼 페이지에서 입력된 취미 값을 얻어오도록 요청 파라미터 이름 hobby1, hobby2, hobby3으로 request 내장 객체의 getParameter() 메소드를 작성한다.
		String comment = request.getParameter("comment"); //10,11,12,16,20행 : 폼 페이지에서 입력된 아이디, 비밀번호, 이름, 가입 인사 값을 얻어오도록 요청 파라미터 이름 id, passwd, name, sex, comment로 request 내장 객체의 getParameter() 메소드를 작성한다.
	%>
	<p> 아이디 : <%=id %>
	<p> 비밀번호 : <%=passwd %>
	<p> 이름 : <%=name %>
	<p> 연락처 : <%=phone1 %><%=phone2 %><%=phone3 %>
	<p> 성별 : <%=sex %>
	<p> 취미 : <%=hobby1 %><%=hobby2 %><%=hobby3 %>
	<p> 가입 인사 : <%=comment %> <!-- 폼 페이지에서 전달받은 폼 데이터의 값을 출력하도록 표현문 태그를 작성한다. -->
</body>
</html>