<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form action="fileupload03_process.jsp" method="post" enctype="multipart/form-data"> 	<!-- 파일 업로드를 위한 폼 태그에 method 속성 값은 post로, enctype 속성 값은 multipart/form-data로 작성한다. 업로드된 파일을 처리하기 위한 action 속성 값을 작성한다. -->
		<p> 파 일 : <input type="file" name="filename">										<!-- 파일을 입력받도록 input 태그의 type 속성 값을 file로 작성하고 name 속성을 작성한다. -->
		<p> <input type="submit" value="파일 올리기">											<!-- 입력된 데이터를 서버로 전송하도록 input 태그의 type 속성 값을 submit로 작성한다. -->
	</form>
</body>
</html>