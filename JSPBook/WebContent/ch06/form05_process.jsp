<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); 
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3"); 
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby"); //폼 페이지에서 입력된 취미 값을 배열로 얻어오도록 요청 파라미터 이름 hobby로 request 내장 객체의 getParameterValues() 메소드를 작성한다.
		String comment = request.getParameter("comment"); 
	%>
	<p> 아이디 : <%=id %>
	<p> 비밀번호 : <%=passwd %>
	<p> 이름 : <%=name %>
	<p> 연락처 : <%=phone1 %><%=phone2 %><%=phone3 %>
	<p> 성별 : <%=sex %>
	<p> 취미 : <%
				if (hobby !=null){
					for (int i = 0; i < hobby.length; i++) {
						out.println(" " + hobby[i]);
					}
				}
			%> <!-- 배열에 저장된 취미 값을 출력하도록 표현문 태그를 작성한다. -->
	<p> 가입 인사 : <%=comment %> 
</body>
</html>