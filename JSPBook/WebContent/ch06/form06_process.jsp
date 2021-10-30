<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
		
			Enumeration paramNames = request.getParameterNames(); //폼 페이지에서 전송된 요청 파라미터를 받도록 request 내장 객체의 getParameterNames()메소드를 작성한다.
			while (paramNames.hasMoreElements()){ //폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElements() 메소드를 작성한다.
				String name = (String) paramNames.nextElement(); //폼 페이지에서 전송되 요청 파라미터의 이름을 가져오도록 nextElement()메소드를 작성한다.
				out.print("<tr><td>" + name + "</td>\n"); //폼 페이지에서 전송된 요청 파라미터의 이름을 출력하도록 out 내장 객체의 print() 메소드를 작성한다.
				String paramValue = request.getParameter(name); // 폼 페이지에서 전송된 요청 파라미터의 값을 얻어오도록 18행에서 얻어온 요청 파라미터 이름으로 requet 내장 객체의 getParameter() 메소드를 작성한다.
				out.println("<td>" + paramValue + "</td></tr>\n"); //폼 페이지에서 전송된 요청 파라미터의 값을 출력하도록 out 내장 객체의 println() 메소드를 작성한다.
			}
		%>
	</table>
</body>
</html>