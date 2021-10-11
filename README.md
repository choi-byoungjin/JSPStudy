# JSPStudy

- JSP 페이지의 처리 과정 

Jsp는 하나의 서블릿 프로그램으로 변환되어 실행됨 

hello.jsp에서 번역되어 hello_jsp.java라는 서블릿 프로그램이 생성되고 이 서블릿 프로그램이 컴파일되어 hello_jsp.class가 생성됨 

 

서블릿은 자바 코드 안에 HTML 코드를 추가 

JSP는 HTML 코드 안에 자바 코드를 추가 

 

서블릿 프로그램과 class를 생성하는 역할은 JSP 컨테이너가 담당함, 컨테이너는 웹 서버와 분리하여 설치할 수도 있고 웹 서버에 포함할 수도 있음 (톰캣은 JSP 컨테이너가 포함된 웹 서버) 

 

Class에는 jspInit(), _jspService(), jspDestroy() 메소드가 존재 

JspInit() - 로딩 및 초기화 

_jspService() - 실행 

JspDestroy() - 소멸 
