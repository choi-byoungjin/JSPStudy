<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
	<p> 아이디 : <%=person.getId() %>
	<p> 이  름 : <%=person.getName() %>
		<%
			person.setId(20182005);
			person.setName("홍길동");
		%> <!-- 10~13 useBean 액션 태그에 id 속성 값을 통해 Person 클래스의 setId(), setName() 메소드를 호출하여 새로운 값을 저장하도록 스크립틀릿 태그를 작성한다. -->
		<jsp:include page="useBean03.jsp"/> <!-- 외부 파일 useBean03.jsp의 내용을 포함하여 출력하도록 include 액션 태그의 page 속성을 작성한다. -->
</body>
</html>