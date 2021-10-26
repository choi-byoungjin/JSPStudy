<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="bean" class="ch04.com.dao.Calculator" /> <!-- 자바빈즈로 Calculator 클래스를 사용하도록 useBean 액션 태그를 작성한다. -->
	<%
		int m = bean.process(5);
		out.print("5의 3제곱 : " + m);
	%> <!-- 8~11 useBean 액션 태그에 id 속성 값을 통해 Calculator 클래스의 process() 메소드를 호출하여 반환한 결과 값을 out 내장 객체 변수를 통해 출력하도록 스크립틀릿 태그를 작성한다. -->
</body>
</html>