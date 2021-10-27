<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" /> <!-- 자바빈즈 Person 클래스를 사용하도록 useBean 액션 태그를 작성한다. -->
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="홍길동"/> <!-- 8~9 : useBean 액션 태그의 id 속성 값을 통해 자바빈즈 Person의 프로퍼티 id와 name에 값을 저장하도록 setProperty 액션 태그를 작성한다. -->
	<p> 아이디 : <% out.println(person.getId()); %>
	<p> 이  름 : <% out.println(person.getName()); %> <!-- 10~11 : useBean 액션 태그의 id 속성 값을 통해 Person 클래스의 getId(), getName() 메소드를 호출하여 반환된 값을 out 내장 객체 변수를 이용하여 출력하도록 스크립틀릿 태그를 작성한다. -->
</body>
</html>