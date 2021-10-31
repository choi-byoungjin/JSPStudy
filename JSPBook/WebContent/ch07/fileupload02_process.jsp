<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>				<!-- MultipartRequest 클래스를 사용하도록 page 디렉티브 태그의 import 속성 값에 패키지 com.oreilly.servlet.*을 작성한다. -->
<%@ page import="com.oreilly.servlet.multipart.*" %>	<!-- DefaultFileRenamePolicy 클래스를 사용하도록 pgae 디렉티브 태그의 import 속성 값에 패키지 com.oreilly.servlet.multipart.*를 작성한다. -->
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());	//MultipartRequest 클래스를 생성하도록 서버 파일 저장 경로, 파일 최대크기, 파일명의 인코딩 유형, 파일명 중복방지 클래스로 작성한다.
	
		String name1 = multi.getParameter("name1");
		String subject1 = multi.getParameter("subject1");
		
		String name2 = multi.getParameter("name2");
		String subject2 = multi.getParameter("subject2");
		
		String name3 = multi.getParameter("name3");
		String subject3 = multi.getParameter("subject3");		//14~21 : 폼 페이지에서 입력된 이름, 제목 값을 얻어오도록 요청 파라미터 이름을 설정하여 MultipartRequest 객체 타입의 getParameter() 메소드를 작성한다.
		
		Enumeration files = multi.getFileNames();				//폼 페이지에서 전송되어 서버에 업로드된 여러 개의 파일을 가져오도록 MultipartRequest 객체 타입의 getFileNames() 메소드를 작성하여 Enumeration 객체 타입에 저장한다.
		
		String file3 = (String) files.nextElement();
		String filename3 = multi.getFilesystemName(file3);
		
		String file2 = (String) files.nextElement();
		String filename2 = multi.getFilesystemName(file2);
		
		String file1 = (String) files.nextElement();
		String filename1 = multi.getFilesystemName(file1);		//25~32 : Enumeration 객체 타입에 저장된 파일을 하나씩 가져오도록 nextElement() 메소드를 작성하고, 해당 파일명을 가져오도록 MultipartRequest 객체 타입의 getFilesystemName() 메소드를 작성한다.
	%>
	<table border="1">
		<tr>
			<th width="100">이름</th>
			<th width="100">제목</th>
			<th width="100">파일</th>
		</tr>
		<%
			out.print("<tr><td>" + name1 + " </td>");
			out.print("<td>" + subject1 + " </td>");
			out.println("<td> " + filename1 + "</td></tr>\n");
			
			out.print("<tr><td>" + name2 + " </td>");
			out.print("<td>" + subject2 + " </td>");
			out.println("<td> " + filename2 + "</td></tr>\n");
			
			out.print("<tr><td>" + name3 + " </td>");
			out.print("<td>" + subject3 + " </td>");
			out.println("<td> " + filename3 + "</td></tr>\n");	//41~51 : 14~32행에서 저장된 각각의 값을 출력하도록 out 내장 객체의 println() 메소드를 작성한다.
		%>
	</table>
</body>
</html>