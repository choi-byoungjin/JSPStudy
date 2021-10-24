<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp" %> <!-- 머리글에 해당하는 menu.jsp파일의 내용을 포함하도록 include 디렉티브 태그를 작성 -->
	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다"; /* 변수 greeting에 한글 문자열을 저장하도록 선언문 태그를 작성합니다. */
	String tagline = "Welcome to Web Market!";%>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
			<%
				Date day = new java.util.Date(); //현재 날짜와 시각을 얻어오기 위해 Date 클래스의 인스턴스 day를 생성합니다.
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0){
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;//시각이 13~23시이면 1~11시로 표현하도록 작성
				}//현재 시각이 12 이하이면 AM 을 출력하고 12를 초과하면 PM을 출력하도록 설정
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시각: " + CT + "\n");
			%> <!-- 현재 시각을 출력하도록 스크립틀릿 태그 작성 -->
		</div>
	</div>
	<%@ include file="footer.jsp" %><!-- 바닥글에 해당하는 footer.jsp파일의 내용을 포함하도록 include 디렉티브 태그를 작성 -->
</body>
</html>