<%@page import="java.util.Enumeration"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		Enumeration en = request.getHeaderNames(); //모든 헤더 이름을 가져오도록 request 내장 객체의 getHeaderNames() 메소드를 작성하고, 이를 모두 저장하도록 Enumeration 객체 타입의 변수 en을 작성한다.
		while (en.hasMoreElements()) { //Enumeration 객체 타입의 변수 en의 hasMoreElements() 메소드를 통해 저장된 헤더 이름이 있을 때까지 반복하도록 while 문을 작성한다.
			String headerName = (String) en.nextElement(); //현재 헤더 이름을 가져오도록 Enumeration 객체 타입의 변수 en의 nextElement() 메소드를 작성한다.
			String headerValue = request.getHeader(headerName); //설정된 헤더 이름의 값을 가져오도록 request 내장 객체의 getHeader() 메소드를 작성한다.
	%>
	<%=headerName%> : <%=headerValue%><br> <!-- 현재 헤더 이름과 값을 출력하도록 표현문 태그를 작성한다. -->
	<%
		}
	%> <!-- 14~16 : 9행의 while 문을 닫도록 스크립틀릿 태그를 작성한다. -->
</body>
</html>