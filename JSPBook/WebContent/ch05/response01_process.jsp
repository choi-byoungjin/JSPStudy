<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //폼 페이지에서 입력한 한글을 처리하도록 request 내장 객체의 setCharacterEncoding() 메소드에 문자 인코딩 유형을 utf-8로 작성한다.
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd"); //9~10 : 입력된 아이디와 비밀번호를 폼 문으로부터 전송받도록 request 내장 객체의 getParameter() 메소드를 작성한다.
		
		if (userid.equals("관리자") && password.equals("1234")){
			response.sendRedirect("response01_success.jsp");
		} else {
			response.sendRedirect("response01_failed.jsp");
		} //12~16 : 폼 문으로부터 전송받은 아이디와 비밀번호와 일치하면 response01_suiccess.jsp 페이지로 이동하고, 일치하지 않으면 response01_failed.jsp 페이지로 이동하도록 response 내장 객체의 sendRedirect() 메소드를 작성한다.
	%>
</body>
</html>