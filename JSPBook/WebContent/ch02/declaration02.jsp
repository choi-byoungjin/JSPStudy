<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%! int sum(int a, int b) {
		return a + b;
	} %> <!-- 전역 메소드 sum() -->
	<%
		out.println("2 + 3 = " + sum(2, 3)); 
	%> <!-- 스크립틀릿 태그 -->
</body>
</html>