<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>				<!-- MultipartRequest 클래스를 사용하도록 page 디렉티브 태그의 import 속성 값에 패키지 com.oreilly.servlet.*을 작성한다. -->
<%@ page import="com.oreilly.servlet.multipart.*"%>	<!-- DefaultFileRenamePolicy 클래스를 사용하도록 page 디렉티브 태그의 import 속성 값에 패키지 com.oreilly.servlet.multipart.*를 작성한다. -->
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8",  new DefaultFileRenamePolicy());		//MultipartRequest 클래스를 생성하도록 서버 파일 저장경로, 파일 최대크기, 파일명의 인코딩 유형, 중복방지클래스로 작성한다.

	Enumeration params = multi.getParameterNames();			//폼 페이지에서 전송된 요청 파라미터를 받도록 MultipartRequest 객체 타입의 getParameterNames() 메소드를 작성한다.
	
	while (params.hasMoreElements()) {						//폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElements() 메소드를 작성한다
		String name = (String) params.nextElement();		//폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement() 메소드를 작성한다.
		String value = multi.getParameter(name);			//폼 페이지에서 전송된 요청 파라미터의 값을 얻어오도록 12행에서 얻어온 요청 파라미터의 이름으로 MultipartRequest 객체 타입의 getParameter() 메소드를 작성한다.
		out.println(name + " = " + value + "<br>");			//폼 페이지에서 전송된 요청 파라미터의 값을 출력하도록 out 내장 객체의 println() 메소드를 작성한다.
	}
	out.println("-----------------------------------<br>");
	
	Enumeration files = multi.getFileNames();				//폼 페이지에서 전송된 요청 파라미터 중 파일을 전달받도록 MultipartRequest 객체 타입의 getFileNames()메소드를 작성한다.
	
	while (files.hasMoreElements()) {						//폼 페이지에서 전송된 요청 파라미터 중 파일이 없을 때까지 반복하도록 hasMoreElements()메소드를 작성한다.
		String name = (String) files.nextElement();			//폼 페이지에서 전송된 요청 파라미터 중 파일을 가져오도록 nextElement() 메소드를 작성한다.
		String filename = multi.getFilesystemName(name);	//폼 페이지에서 전송되어 서버에 업로드된 파일을 가져오도록 MultipartRequest 객체 타입의 getFilesystemName() 메소드를 작성한다.
		String original = multi.getOriginalFileName(name);	//폼 페이지에서 전송된 파일이 서버에 저장되기 전의 파일 이름을 가져오도록 MultipartRequest 객체 타입의 getOriginalFileName() 메소드를 작성한다.
		String type = multi.getContentType(name);			//폼 페이지에서 전송된 파일의 콘텐츠 유형을 가져오도록 MultipartRequest 객체 타입의 getContentType() 메소드를 작성한다.
		File file = multi.getFile(name);					//폼 페이지에서 전송된 파일을 가져오도록 MultipartRequest 객체 타입의 getFile() 메소드를 작성한다.
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if (file != null) {
			out.println(" 파일 크기 : " + file.length());
			out.println("<br>");
		}	//27~35 : 21~25행에서 저장된 각각의 값을 출력하도록 out 내장 객체의 println() 메소드를 작성한다.
	}
%>