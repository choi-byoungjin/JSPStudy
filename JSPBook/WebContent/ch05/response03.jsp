<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
	%> <!-- 7~9 : 웹 브라우저에 응답할 오류로 404 코드 및 오류 메시지를 출력하도록 response 내장 객체의 sendError() 메소드를 작성한다. -->
</body>
</html>