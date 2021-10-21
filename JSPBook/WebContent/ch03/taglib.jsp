<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%><!-- jstl의 core태그를 사용하기 위해 taglib 태그를 작성 -->
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}"/><%-- 변수 k값을 출력하도록 <c:out> 태그를 작성 --%>
	</c:forEach><%-- 변수 k가 1부터 10까지 1씩 증가하도록 jstl의 core 태그 반복문 <c:foreach>...</c:foreach>태그를 작성 --%>
</body>
</html>