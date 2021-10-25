<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p>오늘의 날짜 및 시각
	<p><%=(new java.util.Date()).toLocaleString()%> <!-- 현제 로케일의 날짜를 얻어오기 위해 Date 클래스를 작성합니다. -->
</body>
</html>