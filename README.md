# JSP 개요

- JSP 페이지의 처리 과정  
JSP는 하나의 서블릿 프로그램으로 변환되어 실행됨 
hello.jsp에서 번역되어 hello_jsp.java라는 서블릿 프로그램이 생성되고 이 서블릿 프로그램이 컴파일되어 hello_jsp.class가 생성됨 

- 서블릿, JSP 차이
  - 서블릿은 자바 코드 안에 HTML 코드를 추가 
  - JSP는 HTML 코드 안에 자바 코드를 추가 

- 서블릿 프로그램과 class를 생성하는 역할은 JSP 컨테이너가 담당함, 컨테이너는 웹 서버와 분리하여 설치할 수도 있고 웹 서버에 포함할 수도 있음 (톰캣은 JSP 컨테이너가 포함된 웹 서버) 

 Class에는 jspInit(), _jspService(), jspDestroy() 메소드가 존재 

JspInit() - 로딩 및 초기화 

_jspService() - 실행 

JspDestroy() - 소멸 

## 웹과 JSP프로그래밍 이해하기

- 인터넷 = 컴퓨터가 서로 연결되어 TCP/IP 통신 프로토콜을 이용하여 정보를 주고받는 전 세계의 컴퓨터 네트워크
- 웹은 클라이언트/서버 방식으로 동작, 클라이언트가 특정 페이지를 웹 서버에 요청하면 이를 처리한 후 그 결과를 클라이언트에게 보내어 응답하는 것
- 정적 웹페이지는 컴퓨터에 저장된 텍스트 파일을 그대로 보는것, 동적 웹 페이지는 저장된 내용을 다른 변수로 가공 처리하여 보는 것
- 웹 프로그래밍 언어는 클라이언트 측 실행 언어와 서버 측 실행 언어로 구분됨, JSP는 서버 측 웹 프로그래밍 언어 중 하나이다.
- JSP
  - 유지관리가 용이
  - 빠른 개발이 가능
  - 코드 길이 줄임
  - 하나의 서블릿 프로그램으로 변환되어 실행됨
  - 생성부터 파괴까지 번역 > 컴파일 > 로딩 및 초기화 > 실행 > 소멸의 과정을 거침

## JSP 개발 환경 구축하기

- 자바 개발환경


|요소|프로그램명|설명|
|------|---|---|
|자바 개발 환경|JDK|JSP는 HTML 코드 내에 자바 코드를 작성하기 때문에 자바 개발 도구인 JDK가 반드시 설치되어 있어야 함|
|웹 서버|톰캣|JSP 웹 컨테이너로 자주 사용됨|
|통합 개발 환경|이클립스|JSP 코드를 작성한 후 이를 컴파일하여 오류를 검사하고 실행 결과를 확인|  
</br>

# 스크립트 태그

## 스크립트 태그 종류
|스크립트 태그|형식|설명
|------|---|---|
|선언문|<%!...%>|자바 변수나 메소드를 정의하는데 사용|
|스크립틀릿|<%...%>|자바 로직 코드를 작성하는데 사용|
|표현문|<%=...%>|변수, 계산식, 메소드 호출 결과를 문자열 형태로 출력하는데 
</br>
## 선언문 태그 사용법
- 선언문 태그에 선언된 변수와 메소드는 JSP 페이지 임의의 위치에서 선언할 수 있으며, 스크립틀릿 태그보다 나중에 선언해도 스크립틀릿 태그에서 사용할 수 있음
- 선언문 태그로 선언된 변수는 전역변수로 사용되고, 선언문 태그로 선언된 메소드는 전역변수처럼 전역 메소드로 사용됩니다.

## 스크립틀릿 태그 사용법
- 스크립틀릿 태그는 out 객체를 사용하지 않고도 쉽게 HTML 응답을 만들어낼 수 있음
- 가장 일반적으로 사용되며 변수 또는 메소드 선언, 유효식 등 다수를 포함할 수 있다.

## 표현문 태그 사용법
- 표현문 태그를 이용하여 선언문 태그 또는 스크립틀릿 태그에서 선언된 변수나 메소드의 반환 값을 외부로 출력할 수 있음
- 표현문 태그는 스크립틀릿 태그에서 사용할 수 없으므로 이 경우에는 out.print() 메소드를 사용해야함. 표현문 태그에 숫자, 문자, 불 등의 기본 데이터 타입과 자바 객체 타입도 사용 가능합니다. 그리고 표현문 태그에 작성된 모든 자바 코드의 값은 문자열로 변환되어 웹 브라우저에 
</br>

# 디렉티브 태그
- 디렉트비 태그는 JSP 페이지를 어떻게 처리할 것인지를 설정하는 태그이다.
- JSP 페이지가 서블릿 프로그램에서 서블릿 클래스로 변환할 때 JSP 페이지와 관련된 정보를 JSP 컨테이너에 지시하는 메시지이다.
- JSP 페이지를 수정하여 다시 컴파일하는 경우에만 역할을 수행하기 때문에 HTML 응답에 특별한 영향을 미치지 않음

## 디렉티브 태그의 종류
|디렉티브 태그|형식|설명
|------------|----|----|
|page|<%@ page ... %>|JSP 페이지에 대한 정보를 설정|
|include|<%@ include ... %>|JSP 페이지의 특정 영역에 다른 문서를 포함|
|taglib|<%@ taglib ... %>|JSP 페이지에서 사용할 태그 라이브러리를 설정|
</br>

## page 디렉티브 태그 사용법
|속성|설명|기본 값|
|----|----|------|
|language|현재 JSP 페이지가 사용할 프로그래밍 언어를 설정|java|
|contentType|현재 JSP 페이지가 생성할 문서의 콘텐츠 유형을 설정|text/html|
|pageEncoding|현재 JSP 페이지의 문자 인코딩을 설정|ISO-8859-1|
|import|현재 JSP 페이지의 사용할 자바 클래스를 설정||
|session|현재 JSP 페이지의 세션 사용 여부를 설정|true|
|buffer|현재 JSP 페이지의 출력 버퍼 크기를 설정|8KB|
|autoFlush|출력 버퍼의 동작 제어를 설정|true|
|isThreadSafe|현재 JSP 페이지의 멀티스레드 허용 여부를 설정|true|
|info|현재 JSP 페이지에 대한 설명을 설정||
|errorPage|현재 JSP 페이지에 오류가 발생했을 때 보여줄 오류 페이지를 설정||
|isErrorPage|현재 JSP 페이지가 오류 페이지인지 여부를 설정|false|
|isELIgnored|현재 JSP 페이지의 표현 언어(EL) 지원 여부를 설정|flase|
|isScriptingEnable|현재 JSP 페이지의 스크립트 태그 사용 여부를 설정||
</br>

## include 디렉티브 태그 사용법
- JSP 페이지에 포함할 수 있는 외부 파일은 HTML, JSP, 텍스트 파일 등이며, include 디렉티브 태그는 JSP 페이지 어디에서든 선언할 수 있음
- 머리글과 바닥글 같은 공통된 부분을 별도의 JSP 파일로 만들어 웹 페이지를 모듈화할 수 있으므로 중복된 코드가 줄어들어 유지 보수 측면에서 매우 유용함
</br>

## taglib 디렉티브 태그 사용법
- taglib 디렉티브 태그를 사용하기 위해서는 prefix 속성과 uri 속성을 지정해야 

# 액션 태그

## 액션 태그 개요
액션 태그는 서버나 클라이언트에게 어떤 행동을 하도록 명령하는 태그

## forward 액션 태그의 기능과 사용법
- 현재 JSP 페이지에서 다른 페이지로 이동하는 태그
- forward 액션 태그를 만나면 그 전까지 출력 버퍼에 저장되어 있던 내용을 모두 삭제한다.
  - forward 액션 태그 사용 시 주의점</br> 웹 서버는 forward 액션 태그를 수행할 때 출력 버퍼를 지우므로 현재 페이지에서 forward 액션 태그가 선언된 지점 이전까지 생성된 HTML 코드가 손실된다. 그러나 현재 페이지가 이미 전달 버퍼로 채워진 경우에는 전달이 중단될 때까지 해당 내용을 웹 서버에서 응답으로 보낸다. 이렇게 하면 잘못된 페이지가 클라이언트로 전송될 수 있다.
