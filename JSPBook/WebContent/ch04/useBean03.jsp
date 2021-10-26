<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/> 
	<p> 아이디 : <%=person.getId() %>
	<p> 이  름 : <%=person.getName() %> 
</body>
</html>

<!-- 7행 : 자바빈즈로 Person 클래스를 사용하도록 useBean 액션 태그를 작성한다. -->
<!-- 8~9행 : useBean 액션 태그에 id 속성 값을 통해 Person 클래스의 getId(), getName() 메소드를 각각 호출하여 반환된 결과 값을 출력하도록 표현문 태그를 작성한다. -->