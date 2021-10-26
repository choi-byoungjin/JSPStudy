<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" /> <!-- 자바빈즈로 Date 클래스를 사용하도록 useBean 액션 태그를 작성한다. -->
	<p> <%
			out.print("오늘의 날짜 및 시각");
		%> out <!-- 내장 객체 변수를 통해 설정한 문자열을 출력하도록 스크립틀릿 태그를 작성한다. -->
	<p><%=date %> <!-- useBean 액션 태그에 id 속성 값으로 현재 날짜와 시각을 출력하도록 표현문 태그를 작성한다. -->
</body>
</html>