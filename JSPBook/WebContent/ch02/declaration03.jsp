<html>
<head>
<title>Scripting Tag</title>
<body>
	<%! String makeItLower(String data){
		return data.toLowerCase();
	} %> <!-- 전역 메소드 makeItLower() 선언 -->
	<%
		out.println(makeItLower("Hello World"));
	%> <!-- 스크립틀릿 태그 -->
</body>
</head>
</html>