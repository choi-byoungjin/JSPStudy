<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>		<!-- Commons-FileUpload 패키지를 사용하도록 page 디렉티브 태그의 import 속성 값에 패키지 org.apache.commons.fileupload.*를 작성한다. -->
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String path = "C:\\upload";							//폼 페이지에서 전송된 파일을 저장할 서버의 경로를 작성한다.
	
		DiskFileUpload upload = new DiskFileUpload();		//파일 업로드를 위해 DiskFileUpload 클래스를 생성한다.
		
		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);
		upload.setRepositoryPath(path);						//15~17 : 업로드할 파일의 최대 크기, 메모리상에 저장할 최대 크기, 업로드된 파일을 임시로 저장할 경로를 작성한다.
		
		List items = upload.parseRequest(request);			//폼 페이지에서 전송된 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의 parseRequest() 메소드를 작성한다.
		Iterator params = items.iterator();					//폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환한다.
		
		while (params.hasNext()) {							//폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 Iterator 객체 타입의 hasNext() 메소드를 작성한다.
			FileItem item = (FileItem) params.next();		//폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 Iterator 객체 타입의 next() 메소드를 작성한다.
			
			if (item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name + "=" + value + "<br>");
			} else {										//25~29 : 폼 페이지에서 전송된 요청 파라미터가 일반 데이터이면 요청 파라미터의 이름과 값을 출력하도록 out 내장 객체의 println()메소드를 작성한다.
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.println("--------------------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
				out.println("파일 크기 : " + fileSize);
			}												//29~45 : 폼 페이지에서 전송된 요청 파라미터가 파일이면 30행은 요청 파라미터의 이름, 31행은 저장 파일의 이름, 32행은 파일 콘텐츠 유형, 35행은 파일 크기에 대한 정보를 가져와 출력하도록 out 내장 객체의 println() 메소드를 작성한다.
		}
	%>
</body>
</html>