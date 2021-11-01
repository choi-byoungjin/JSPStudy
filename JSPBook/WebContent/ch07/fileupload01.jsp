<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data"   action="fileupload01_process.jsp">		<!-- 파일 업로드를 위한 폼 태그에 method 속성 값은 post로, enctype 속성 값은 multipart/form-data로 작성한다. 그리고 업로드된 파일을 처리하기 위한 action 속성 값을 작성한다. -->
		<p> 이 름 : <input type="text" name="name">
		<p> 제 목 : <input type="text" name="subject">		<!-- 이름과 제목 값을 입력받도록 input 태그의 type 속성 값을 text로 작성하고 name 속성을 작성한다. -->
		<p> 파 일 : <input type="file" name="filename">		<!-- 파일을 입력받도록 input 태그의 type 속성 값을 file로 작성하고 name 속성을 작성한다. -->
		<p> <input type="submit" value="파일 올리기">			<!-- 입력된 데이터를 서버로 전송하도록 input 태그의 type 속성 값을 submit로 작성한다. -->
		</p>
	</form>
</body>
</html>