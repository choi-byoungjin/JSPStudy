<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" /> <!-- 자바빈즈로 Person 클래스를 사용하도록 useBean 액션 태그를 작성한다. -->
	<p> 아이디 : <jsp:getProperty property="id" name="person"/>
	<p> 이  름 : <jsp:getProperty property="name" name="person"/> <!-- 8~9 : useBean 액션 태그의 id 속성 값을 통해 자바빈즈 Person의 프로퍼티 id와 name에 값을 가져와 출력하도록 getProperty 액션 태그를 작성한다. -->
</body>
</html>