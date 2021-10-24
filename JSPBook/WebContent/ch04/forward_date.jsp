<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p>오늘의 날짜 및 시간
	<p><%=(new java.util.Date()).toLocaleString() %> <!-- toLocalString숫자의 사용 언어에 따른 표현을 포함한 문자열을 반환한다. -->
</body>
</html>