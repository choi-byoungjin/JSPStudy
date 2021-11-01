<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>		<!-- Commons-FileUpload 패키지를 사용하도록 page 디렉티브 태그의 import 속성 값에 패키지 org.apache.commons.fileupload.*를 작성한다. -->
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		String fileUploadPath = "C:\\upload";				//폼 페이지에서 전송된 파일을 저장할 서버의 경로를 작성한다.
	
		DiskFileUpload upload = new DiskFileUpload();		//파일 업로드를 위해 DiskFileUpload 클래스를 생성한다.
		
		List items = upload.parseRequest(request);			//폼 페이지에서 전송된 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의 parseRequest() 메소드를 작성한다.
		
		Iterator params = items.iterator();					//폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환한다.
		
		while (params.hasNext()) {							//폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 Iterator 객체 타입의 hasNext() 메소드를 작성한다.
			FileItem fileItem = (FileItem) params.next();	//폼 페이지에서 전송된 요청 파라미터의 이름을 가져오도록 Iterator 객체 타입의 next() 메소드를 작성한다.
			if (!fileItem.isFormField()) {
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
			}												//21~26 : 폼 페이지에서 전송된 요청 파라미터가 파일이면 서버의 파일 저장 경로에 업로드 파일을 저장하도록 작성한다.
		}
	%>
</body>
</html>