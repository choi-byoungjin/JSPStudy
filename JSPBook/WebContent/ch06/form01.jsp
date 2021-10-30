<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="#" name="member" method="post">
		<p> 아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 검사">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> 이름 : <input type="text" name="name">
		<p> 연락처 : <input type="text" maxlength="4" size="4" name="phone1"> 
				- <input type="text" maxlength="4" size="4" name="phone2"> 
				- <input type="text" maxlangth="4 size="4" name="phone3">
		<p> 성별 : <input type="radio" name="sex" value="남성" checked>남성
				<input type="radio" name="sex" value="여성">여성
		<p> 취미 : 독서<input type="checkbox" name="hobby1" checked>
				운동<input type="checkbox" name="hobby2">
				영화<input type="checkbox" name="hobby3">
		<p> <input type="submit" value="가입하기 ">
			<input type="reset" value="다시 쓰기">
	</form>
</body>
</html>

<!-- 9행 : 아이디 값을 입력받도록 input 태그의 type 속성 값을 text로 작성하고 name 속성을 작성한다. 또한 <아이디 중복 검사> 버튼을 만들기 위해 input 태그의 type 속성 값을 button으로 작성한다.
	10행 : 입력되는 비밀번호가 보이지 않도록 input 태그의 type 속성 값을 password로 작성한다.
	11행 : 이름 값을 입력받도록 input 태그의 type 속성 값을 text로 작성하고 name 속성을 작성한다.
	12~14행 : 연락처 값을 입력받도록 input 태그 3개의 type 속성 값을 text로 작성하고 name 속성을 작성한다.
	15~16행 : 성별 값 중 하나만 선택 입력받도록 input 태그 2개의 type 속성 값을 radio로 작성하고 name 속성 값을 sex로 작성한다. 그리고 '남성'이 초깃값으로 선택되도록 checked 속성을 설정한다. 
	17~19행 : 취미 값 중 여러 개를 선택 입력받도록 input 태그 3개의 type 속성 값을 checkbox로 작성하고 name 속성 값을 각각 작성한다. 그리고 '독서'가 초깃값으로 선택되도록 checked 속성을 설정한다.
	20~21행 : 입력된 데이터를 서버로 전송하도록 input 태그의 type 속성 값을 submit로 작성한다. 또한 입력된 데이터를 지우도록 input 태그의 type 속성 값을 reset으로 작성한다. -->
	