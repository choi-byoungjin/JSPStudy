<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		out.println("오늘의 날짜 및 시각 " + "<br>"); //설정한 문자열을 출력하도록 out 내장 객체의 println() 메소드를 작성한다. println() 메소드는 줄 바꿈이 되지 않으므로 줄 바꿈을 위해 <br>을 작성한다.
		out.println(java.util.Calendar.getInstance().getTime()); //오늘의 날짜 및 시각을 출력하도록 out 내장 객체의 println() 메소드를 작성한다.
	%>
</body>
</html>