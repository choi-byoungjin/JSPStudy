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
|표현문|<%=...%>|변수, 계산식, 메소드 호출 결과를 문자열 형태로 출력하는데 사용| 
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
  - 액션 태그를 사용하는 이유</br> 액션 태그는 스크립트 태그와 마찬가지로 JSP 페이지에서 자바 코드를 삽입할 수 잇는 태그이다. 액션 태그는 스크립트 태그를 이용하여 JSP 페이지에 직접 자바 코드를 작성하는 것을 피하기 위해 사용한다. 즉 JSP 페이지를 작성할 때 자바 코드의 삽입을 되도록 최소화하여 유지 보수를 효율적으로 하는 것이 그 목적이다.

## 액션 태그 종류

|액션 태그|형식|설명|
|--------|----|---|
|forward|<jsp:forward ... />|다른 페이지로의 이동과 같은 페이지 흐름을 제어한다.|
|include|<jsp:include ... />|외부 페이지의 내용을 포함하거나 페이지를 모듈화한다.|
|useBean|<jsp:useBean ... />|JSP 페이지에 자바빈즈를 설정합니다.|
|setProperty|<jsp:setProperty ... />|자바빈즈의 프로퍼티 값을 설정한다.|
|getProperty|<jsp:getProperty ... />|자바빈즈의 프로퍼티 값을 얻어온다.|
|param|<jsp:param ... />|<jsp:forward>, <jsp:include>, <jsp:plugin> 태그에 인자를 추가한다.|
|plugin|<jsp:plugin ... />|웹 브라우저에 자바 애플릿을 실행한다. 자바 플러그인에 대한 </br> OBJECT 또는 EMBED 태그를 만드는 브라우저별 코드를 생성한다.|
|element|<jsp:element ... />|동적 XML 요소를 설정한다.|
|attribute|<jsp:attribute ... />|동적으로 정의된 XML 요소의 속성을 설정한다.|
|body|<jsp:body ... />|동적으로 정의된 XML 요소의 몸체를 설정한다.|
|text|<jsp:text ... />|JSP 페이지 및 문서에서 템플릿 텍스트를 작성한다.|

## forward 액션 태그의 기능과 사용법
- 현재 JSP 페이지에서 다른 페이지로 이동하는 태그
- **<jsp:forward page="파일명" />**
- forward 액션 태그를 만나면 그 전까지 출력 버퍼에 저장되어 있던 내용을 모두 삭제한다.
  - forward 액션 태그 사용 시 주의점</br> 웹 서버는 forward 액션 태그를 수행할 때 출력 버퍼를 지우므로 현재 페이지에서 forward 액션 태그가 선언된 지점 이전까지 생성된 HTML 코드가 손실된다. 그러나 현재 페이지가 이미 전달 버퍼로 채워진 경우에는 전달이 중단될 때까지 해당 내용을 웹 서버에서 응답으로 보낸다. 이렇게 하면 잘못된 페이지가 클라이언트로 전송될 수 있다.

### forword 액션 태그의 처리 과정
1. 웹 브라우저에서 웹 서버로 first.jsp를 요청
2. JSP 컨테이너는 요청된 first.jsp를 실행한다.
3. first.jsp를 실행하다가 forward 액션 태그를 만나면 지금까지 저장된 출력 버퍼의 내용을 삭제하고 프로그램 제어를 page속성에서 설정한 second.jsp로 이동한다.
4. second.jsp를 실행한다.
5. JSP 컨테이너는 second.jsp를 실행한 결과를 웹 브라우저에 응답으로 보낸다.

## include 액션 태그의 기능과 사용법
- JSP 페이지의 특정 영역에 외부 파일의 내용을 포함하는 태그
- **<jsp:include page="파일명" flush="false"/>**
- fluch 속성 값
  - 외부 파일로 제어가 이동할 때 현재 JSP 페이지가 지금까지 출력 버퍼에 저장된 내용을 웹 브라우저에 출력하고 출력 버퍼를 비운다.
  - 일반적으로 flush 속성은 false로 지정하는 것이 좋다. true로 지정하면 일단 출력 버퍼를 웹 브라우저에 전송하는데 이때 헤더 정보도 같이 전송됨. 헤더 정보가 웹 브라우저에 전송되고 나면 헤더 정보를 추가해도 결과가 반영되지 않음.
- forward 액션 태그처럼 외부 파일을 포함한다는 점이 비슷하지만, 포함된 외부 파일이 실행된 후 현재 JSP 페이지로 제어를 반환한다는 차이점이 있음
- JSP 컨테이너는 현재 JSP 페이지에서 include 액션 태그를 만나면 include 액션 태그에 설정된 외부 파일의 실행 내용이 현재 JSP 페이지의 출력 버퍼에 추가 저장되어 출력됨

### indclud 액션 태그의 처리 과정
1. 웹 브라우저에서 웹 서버로 first.jsp를 요청한다.
2. JSP 컨테이너 요청받은 first.jsp를 처리하고 first.jsp 내의 출력 내용이 출력 버퍼에 저장된다.
3. 이때 <jsp:include page="second.jsp" flush="false"/> 문장을 만나면 하던 작업을 멈추고 프로그램 제어를 second.jsp로 이동한다.
4. second.jsp를 실행하고 second.jsp 내의 출력 내용이 출력 버퍼에 저장된다.
5. second.jsp의 처리가 끝나면 다시 first.jsp로 프로그램의 제어가 이동하는데, 이동 위치는 <jsp:include page="second.jsp" flush="false"/> 문장의 다음 행이 된다.
6. first.jsp의 나머지 부분을 처리하고, 출력할 내용이 있으면 출력 버퍼에 저장한다.
7. JSP 컨테이너는 출력 버퍼의 내용을 웹 브라우저에 응답으로 보낸다.

### include 액션 태그와 include 디렉티브 태그의 차이
- include 디렉티브 태그는 단순하게 다른 페이지의 내용이 텍스트로 포함되지만 include 액션 태그는 다른 페이지의 처리 결과 내용을 포함한다.

|구분|include 액션 태그|include 디렉티브 태그|
|----|----------------|--------------------|
|처리 시간|요청 시 자원을 포함한다.|번역 시 자원을 포함한다.|
|기능|별도의 파일로 요청 처리 흐름을 이동한다|현재 페이지에 삽입한다.|
|데이터 전달 방법|request 기본 내장 객체나 param 액션 태그를 이용하여 파라미터를 전달한다.|페이지 내의 변수를 선언한 후 변수에 값을 저장한다.|
|용도|화면 레이아웃의 일부분을 모듈화할 때 주로 사용한다.|다수의 JSP 웹 페이지에서 공통으로 사용되는 코드나 저작권과 같은 문장을 포함하는 경우에 사용한다.|
|기타|동적 페이지에 사용한다|정적 페이지에 사용한다.|

## param 액션 태그의 기능과 사용법
- 현재 JSP 페이지에서 다른 페이지에 정보를 전달하는 태그
- **<jsp:forward page="파일명">  
　　<jsp:param name="매개변수명1" value="매개변수값1 "/>  
　　[<jsp:param name="매개변수명2" value="매개변수값2 "/>  
</jsp:forward>**

- first.jap 파일에서 second.jsp 파일로 매개변수 값을 전송하여 출력함
- 단독으로 사용되지 못하며 <jsp:forward>나 <jsp:include> 태그의 내부에 사용됨
- 다른 페이지에 여러 개의 정보를 전송해야 할 때는 다중의 param 액션 태그 사용 가능

## 자바빈즈 액션 태그의 기능과 사용법
- JSP 페이지의 주요 기능 중 하나는 데이터를 보여주는 것
- 하나의 JSP 페이지에 데이터를 보여주기 위한 자바 코드와 단순히 화면을 출력하는 HTML 코드를 함께 작성하면 기능을 확장하거나 코드를 재사용하는 데 어려움
- 효율을 높이기 위해 HTML코드 부분과 자바 코드(데이터를 처리하는 부분의 로직)를 구분하여 작성하고 로직 부분의 코드에 자바빈즈 클래스를 사용한다.

### 자바빈즈 개요
- 동적 콘텐츠 개발을 위해 자바 코드를 사용하여 자바 클래스로 로직을 작성하는 방법
- JSP와 자바빈즈의 흐름
  1. 웹 브라우저가 JSP 페이지에 요청을 전송한다.
  2. JSP 페이지는 자바빈즈와 통신한다.
  3. 자바빈즈가 데이터베이스에 연결된다.
  4. JSP 페이지가 브라우저에 응답한다.
- 자바빈즈는 데이터 표현을 목적으로하는 자바 클래스 이므로 기존의 자바 클래스를 작성하는 방법과 동일하다.
- 자바빈즈는 데이터를 담는 변수인 프로퍼티(property)와 데이터를 가져오거나 저장하는 메소드로 구성된다.
- 자바빈즈를 작성할 때는 다음 규칙을 따라야 한다.
  1. 자바 클래스는 java.io.Serializable 인터페이스를 구현해야 한다.
  2. 인수가 없는 기본 생성자가 있어야 한다.
  3. 모든 멤버 변수이 프로퍼티는 private 접근 지정자로 설정해야 한다.
  4. 모든 멤버 변수인 프로퍼티는 Getter/Setter() 메소드가 존재해야 한다.
    - Getter()메소드 : 멤버 변수에 저장된 값을 가져올 수 있는 메소드
    - Setter()메소드 : 멤버 변수에 값을 저장할 수 있는 메소드
> Java.io.Serializable 인터페이스는 생략 가능하나 자바빈즈 규약에 명시된 내용으로, 자바빈즈에 저장된 프로퍼티를 포함한 채로 파일 시스템에 저장되거나 네트워크로 전송될 수 있도록 객체 직렬화를 제공해야 하므로 implement 해야 한다.
> 인수(Argument)와 인자(Parameter, 매개변수)의 차이
>  - 매개변수는 함수를 정의할 때 외부로부터 받아들이는 임의의 값을 의미
>  - 인수는 함수를 호출할 때 사용되는 값 
  ```
  function 함수(aaa, bbb){//aaa와 bbb는 파라미터
      return aaa+bbb;
  }
  함수 호출해서 사용
  int result = 함수(3,4); //3,4는 인수
  ```
  
> 이클립스에서 [Source]-[Generate Getters and Setters] 메뉴 사용하면 Getter()/Setter() 메소드 자동 추가
> [Source]-[Generate Constructors from Superclass]에서 기본 생성자 자동 추가
</br>

### useBean 액션 태그로 자바빈즈 사용하기
- useBean 액션 태그는 설정된 id 속성과 scope 속성을 바탕으로 자바빈즈의 객체를 검색하고, 객체가 발견되지 않으면 빈 객체를 생성한다.
```
<jsp:useBean id= "자바빈즈 식별이름" class= "자바빈즈 이름" scope= "범위" />}
```
- useBean 액션 태그의 속성

|속성|설명|
|----|----|
|id|자바빈즈를 식별하기 위한 이름|
|class|패키지 이름을 포함한 자바빈즈 이름이다. 자바빈즈는 인수가 없는 기존 생성자가 있어야 하며 추상 클래스를 사용할 수 없다|
|scope|자바빈즈가 저장되는 영역을 설정한다. page(기본 값), request, session, application 중 하나의 값을 사용한다.|

> 추상 메소드(abstract method)란 자식 클래스에서 반드시 오버라이딩해야만 사용할 수 있는 메소드를 의미한다.
> http://tcpschool.com/java/java_polymorphism_abstract

- useBean 액션 태그 사용 예
```
<jsp:useBean id= "member" class="com.dto.MemberBean" scope="page" />

MemberBean member = (MemberBean) request.getAttribute("member");
if (member == null){
    member = new MemberBean();
    request.setAttribute("member", member);
}
```
### setProperty 액션 태그로 프로퍼티의 값 저장하기

- setProperty 액션 태그는 useBean 액션 태그와 함깨 자바빈즈의 Setter() 메소드에 접근하여 자바빈즈의 멤버 변수인 프로퍼티의 값을 저장하는 태그
- setProperty 태그는 폼 페이지로부터 전달되는 요청 파라미터의 값을 직접 저장하거나 </br> 자바빈즈의 프로퍼티로 변경하여 값을 저장할 수 있다</br> 또는 모든 자바빈즈 프로퍼티 이름과 동일하게 요청 파라미터를 설정할 수 있다

setProperty 액션 태그의 속성

|속성|설명|
|----|----|
|name|useBean 태그에 id 속성 값으로 설정된 자바빈즈를 식별하기 위한 이름이다.|
|property|자바빈즈의 프로퍼티 이름이다. 만약 프로퍼티 이름에 * 를 사용하면 모든 요청 파라미터가 자바빈즈 프로퍼티의 Setter() 메소드에 전달됨을 의미한다. |
|value|변경할 자바빈즈의 프로퍼티 값이다. 만약 프로퍼티의 값이 null이거나 존재하지 않는 요청 파라미터인 경우에는 SetProperty 액션 태그가 무시된다.|
|param|자바빈즈의 프로퍼티 값을 전달하는 요청 파라미터의 이름이다. param과 value를 동시에 모두 사용할 수 없으며 하나를 선택하여 사용하는 것은 가능하다.|

> 메서드 : 객체에 소속된 함수  
> 프로퍼티 : 객체에 소속된 변수
> https://m.blog.naver.com/magnking/220966405605

```
<jsp:setProperty name="자바빈즈 식별이름" property="프로퍼티 이름" value="값" />
```

</br> 

- 자바빈즈 MemberBean의 멤버 변수인 프로퍼티 id에 admin 값을 저장하기 위한 setProperty 액션 태그의 예이다.
- 프로퍼티 id에 저장된 값을 출력하려면 name속성 값 member를 통해 getId() 메소드를 호출하면 된다.

```
[setProperty 액션 태그 사용 예]
<jsp:setProperty name="member" property="id" value="admin"/>
```

```
[자바빈즈 프로퍼티 값 출력 예]
<% out.println("아이디 : " +member.getId()); %>
```

</br> 

앞의 예에서 name 속성 값은 자바빈즈를 식별하기 위해 사용한 useBean 액션 태그의 id 속성값이다.
그러므로 setProperty 액션 태그를 사용하려면 다음과 같이 useBean 액션 태그에 id 속성 값이 설정되어 있어야 한다.
```
<jsp:useBean id="member" class="com.dto.MemberBean" scope="page"/>
```

</br>

**setProperty 액션 태그의 예**
- 요청 파라미터 이름과 자바빈즈의 프로퍼티 이름이 일치하는 경우 : 다음은 폼 페이지에서 요청 파라미터 이름이 자바빈즈의 프로퍼티 이름과 동일하여 id로 값이 전달되는 예

```
//폼 페이지
<form action="memberProcess.jsp" method ="post">
    <input name="id" value="admin" />
</form>

//jsp 페이지
<jsp:setProperty name="member" property="id" />
```

</br>

- 요청 파라미터 이름과 자바빈즈의 프로퍼티 이름이 일치하지 않는 경우 : 다음은 폼 페이지에서 요청 파라미터 이름이 자바빈즈의 프로퍼티 이름과 동일하지 않아 id가 아닌 userId로 값이 전달되는 예

```
//폼 페이지
<form action="memberProcess.jsp" method ="post">
    <input name="userId" value="admin" />
</form>

//jsp 페이지
<jsp:setProperty name="member" property="id" param="userId" />
```

</br>

- 요청 파라미터 이름과 자바빈즈의 프로퍼티 이름이 모두 일치하는 경우 : 다음은 폼 페이지에서 모든 요청 파라미터 이름이 자바빈즈의 모든 프로퍼티 이름과 동일하게 값이 전달되는 예

```
//폼 페이지
<form action="memberProcess.jsp" method="post">
    <input name="id" value="admin" />
    <input name="name" value="관리자" />
</form>

//jsp 페이지
<jsp:setProperty name="member" property= "*" />
```


### getProperty 액션 태그로 프로퍼티의 값 가져오기

- getProperty 액션 태그는 useBean 액션 태그와 함께 자바빈즈의 Getter() 메소드에 접근하여 자바빈즈의 멤버 변수인 프로퍼티의 값을 가져오는 태그
- 형식

```
<jsp:getProperty name="자바빈즈 식별이름" property="프로퍼티 이름" />
```

<br>

getProperty 액션 태그의 속성
|속성|설명|
|---|---|
|name|useBean 태그에 id 속성 값으로 설정된 자바빈즈를 식별하기 위한 이름이다.|
|property|자바빈즈의 프로퍼티 이름이다. 만약 프로퍼티 이름에 * 를 사용하면 모든 요청 파라미터가 자바빈즈 프로퍼티의 Getter() 메소드에 전달됨을 의미한다.|

```
[getProperty 액션 태그 사용 예]
<jsp:getProperty name="member" property="name" />

[자바빈즈의 프로퍼티 값 출력 예]
<% out.println(member.getName()); %>]
```

</br>

# 내장 객체

## 내장 객체의 개요

- JSP 페이지에 사용할 수 있도록 JSP 컨테이너에 미리 정의된 객체
- JSP 페이지가 서블릿 프로그램으로 변역될 때 JSP 컨테이너가 자동으로 내장 객체를 멤버 변수, 메소드 매개변수 등의 각종 참조 변수(객체)로 포함한다.
- JSP 페이지에 별도의 import 문 없이 자유롭게 사용할 수 있다.
- 스크립틀릿 태그나 표현문 태그에 선언을 하거나 객체를 생성하지 않고도 직접 호출하여 사용할 수 있다.
- 내장 객체의 종류

|내장 객체|반환 유형|설명|
|--------|--------|----|
|request|javax.servlet.http.HttpServletRequest|웹 브라우저의 HTTP 요청 정보를 저장한다.|
|response|javax.servlet.http.HttpServletResponse|웹 브라우저의 HTTP 요청에 대한 응답 정보를 저장한다.|
|out|javax.servlet.jsp.jsp.jspWriter|JSP 페이지에 출력할 내용을 담고 있는 출력 스트림이다.|
|session|javax.servlet.http.HttpSession|웹 브라우저의 정보를 유지하기 위한 세션 정보를 저장한다.|
|application|javax.servlet.ServletContext|웹 애플리케이션의 콘텍스트 정보를 저장한다.|
|pageContext|javax.servlet.jsp.PageContext|JSP 페이지의 정보를 저장한다.|
|page|javax.lang.Object|JSP 페이지를 구현한 자바 클래스로 JSP 페이지 자체를 나타낸다.|
|config|javax.servlet.ServletConfig|JSP 페이지의 설정 정보를 저장한다.|
|exception|javax.lang.Throwable|JSP 페이지의 예외 발생을 처리한다.|

- 모든 내장 객체는 JSP 컨테이너가 관리하는 객체로, 이 중 request, session, application, pageContext를 이용하여 속성을 관리할 수 있다.
- 속성은 각각의 내장 객체가 존재하는 동안 JSP 페이지 사이에서 정보를 주고받거나 공유하는 데 사용된다.
- 속성 처리 메소드의 종류

|메소드|반환 유형|설명|
|-----|--------|----|
|setAttribute(String name, Object value)|void|해당 내장 객체의 속성 이름이 name인 속성 값을 value로 저장한다.|
|getAttribute(String name)|Object|해당 내장 객체의 속성 이름이 name인 속성 값을 가져온다.|
|removeAttribute(String name)|void|해당 내장 객체의 속성 이름이 name인 속성을 삭제한다.|
|getAttributeNames()|java.util.Enumeration|해당 내장 객체의 모든 속성 이름을 가져온다.(단, pageContext 내장 객체는 이 메소드를 제공하지 않는다.)|

## request 내장 객체의 기능과 사용법

- 가장 많이 사용되는 기본 내장 객체
- 웹 브라우저에서 서버의 JSP 페이지로 전달하는 정보를 저장한다.
- 폼 페이지로부터 입력된 데이터를 전달하는 요청 파라미터 값을 JSP 페이지로 가져온다.
- JSP 컨테이너는 웹 브라우저에서 서버로 전달되는 정보를 처리하기 위해 javax.servlet.http.HttpServletRequest 객체 타입의 request 내장 객체를 사용하여 사용자의 요구 사항을 얻어낸다.

</br>

### 요청 파라미터 관련 메소드

- 요청 파라미터는 사용자가 폼 페이지에 데이터를 입력한 후 서버에 전송할 때 전달되는 폼 페이지의 입력된 정보 형태를 말한다.
- 요청 파라미터는 <name=value> 형식으로 웹 브라우저에서 서버의 JSP 페이지로 전송된다.
- 요청 파라미터 관련 메소드의 종류

|요청 파라미터 관련 메소드|반환 유형|설명|
|----------------------|--------|----|
|getParameter(String name)|String|요청 파라미터 이름이 name인 값을 전달받는다. </br> 요청 파라미터 값이 없으면 null을 반환한다.|
|getParameterValues(String name)|String[]|모든 요청 파라미터 이름이 name인 값을 배열 형태로 전달받는다. </br> 요청 파라미터 값이 없으면 null을 반환한다.|
|getParameterNames()|java.util.Enumeration|모든 요청 파라미터의 이름과 값을 Enumeration 객체 타입으로 전달받습니다.|
|getParameterMap()|java.util.Map|모든 요청 파라미터의 이름과 값을 Map 객체 타입으로 전달받는다. </br> [Map 객체 타입은 (요청 파라미터 이름, 값) 형식으로 구성된다.]|

</br>

### 요청 HTTP 헤더 관련 메소드

- 웹 브라우저는 HTTP 헤더에 부가적인 정보를 담아 서버로 전송한다.
- request 내장 객체는 헤더 정보나 쿠키 관련 정보를 얻을 수 있는 메소드를 제공한다.

|요청 HTTP 헤더 관련 메소드|반환 유형|설명|
|------------------------|--------|----|
|getHeader(String name)|String|설정한 name의 헤더 값을 가져온다.|
|getHeaders(String name)|Enumeration|설정한 name의 헤더 목록 값을 가져온다.|
|getHeaderNames()|Enumeration|모든 헤더의 이름을 가져온다.|
|getIntHeader(String name)|int|설정한 name의 헤더 값을 정수로 가져온다.|
|getDateHeader(String name)|long|설정한 name의 헤더 값을 시간 값으로 가져온다.|
|getCookies()|javax.servlet.http.Cookie|모든 쿠키 값을 가져온다.|

</br>

### 웹 브라우저/서버 관련 메소드

- request 내장 객체는 웹 브라우저의 요청 및 서버 관련 정보를 얻을 수 있는 메소드를 제공한다.
- 웹 브라우저/서버 관련 메소드의 종류

|웹 브라우저/서버 관련 메소드|반환 유형|설명|
|-------------------------|--------|----|
|getRemoteAddr()|String|웹 브라우저의 IP 주소를 가져온다.|
|getContentLength()|long|웹 브라우저의 요청 파라미터 길이를 가져온다.|
|getCharacterEncoding()|String|웹 브라우저의 문자 인코딩을 가져온다.|
|getContentType()|String|웹 브라우저의 콘텐츠 유형을 가져온다.|
|getProtocol()|String|웹 브라우저의 요청 프로토콜을 가져온다.|
|getMethod()|String|웹 브라우저의 HTTP 요정 메소드(GET, POST)를 가져온다.|
|getRequestURI()|String|웹 브라우저가 요청한 URI 경로를 가져온다.|
|getContextPath()|String|현재 JSP 페이지의 웹 애플리케이션 콘텍스트 경로를 가져온다.|
|getServerName()|String|서버 이름을 가져온다.|
|getServerPort|int|실행 중인 서버 포트 번호를 가져온다.|
|getQueryString|String|웹 브라우저의 전체 요청 파라미터 문자열[물음표(?) 다음 URL에 할당된 문자열]을 가져온다.|

> 속성을 공유할 수 있는 유효 범위
> 내장 객체가 존재하는 동안 사용할 수 있는 속성의 영역(scope)은 page, request, session, application이다.
> 
> |영역|내장 객체|속성의 유효 범위|
> |----|--------|--------------|
> |page|pageContext|해당 페이지가 클라이언트에게 서비스를 제공하는 동안 유효하다.|
> |request|request|클라이언트의 요청이 처리되는 동안 유효하다.|
> |session|session|세션이 유지되는 동안 유효하다.|
> |application|application|웹 애플리케이션이 실행되고 있는 동안 유효하다.|

</br>

## response 내장 객체의 기능과 사용법

- response 내장 객체는 사용자의 요청을 처리한 결과를 서버에서 웹 브라우저로 전달하는 정보를 저장한다.
- 즉, 서버는 응답 헤더와 요청 처리 결과 데이터를 웹 브라우저로 보낸다.
- JSP 컨테이너는 서버에서 웹 브라우저로 응답하는 정보를 처리하기 위해 javax.servlet.http.HttpServletResponse 객체 타입의 response 내장 객체를 사용하여 사용자의 요청에 응답한다.

</br>

### 페이지 이동 관련 메소드

- 서버는 웹 브라우저에 다른 페이지로 강제 이동하도록 response 내장 객체의 리다이렉션 메소드를 제공한다.
- 리다이렉션이란 사용자가 새로운 페이지를 요청할 때와 같이 페이지를 강제로 이동하는 것이다.

> 페이지 이동 방법
> - 포워드(forward) 방식 : 현재 JSP 페이지에서 이동할 URL로 요청 정보를 그대로 전달하므로 사용자가 최초로 요청한 정보가 이동된 URL에서도 유효하다. 이동된 URL이 웹 브라우저의 주소 창에 나타나지 않고 처음 요청한 URL이 나타나기 때문에 이동 여부를 사용자가 알 수 없다.
> ```
> <jsp:forward page="이동할 페이지" />
> ```
> - 리다이렉트(redirect) 방식 : 현재 JSP 페이지로부터 이동할 URL을 웹 브라우저로 반환한다. 이때 웹 브라우저에서는 새로운 요청을 생성하여 이동할 URL에 다시 요청을 전송하므로 처음 보낸 요청 정보가 이동된 URL에서는 유효하지 않다. 이동된 URL이 웹 브라우저의 주소 창에 보인다.
> ```
> response.sendRedirect("이동할 페이지")
> ```

- 페이지 이동 관련 메소드의 종류

|페이지 이동 관련 메소드|반환 유형|설명|
|---------------------|--------|---|
|sendRedirect(String url)|void|설정한 URL 페이지로 강제 이동한다.|

<br>

### 응답 HTTP 레더 관련 메소드

- 응답 HTTP 헤더 관련 메소드는 서버가 웹 브라우저에 응답하는 정보에 헤더를 추가하는 기능을 제공한다.
- 헤더 정보에는 주로 서버에 대한 정보가 저장되어 있다.
- 응답 HTTP 헤더 관련 메소드의 종류

|응답 HTTP 헤더 관련 메소드|반환 유형|설명|
|------------------------|--------|----|
|addCookie(Cookie cookie)|void|쿠키를 추가한다.|
|addDateHeader(String name, long date)|voie|설정한 헤더 이름 name에 날짜/시간을 추가한다.|
|addHeader(String name, String value)|void|설정한 헤더 이름 name에 value를 추가한다.|
|addIntHeader(String name, int value)|void|설정한 헤더 이름 name에 정수 값 value를 추가한다.|
|setDateHeader(String name, long date)|voie|설정한 헤더 이름 name에 날짜/시간을 설정한다.|
|setHeader(String name, String value)|void|설정한 헤더 이름 name에 문자열 값 value를 설정한다.|
|setIntHeader(String name, int value)|void|설정한 헤더 이름 name에 정수 값 value를 설정한다.|
|containsHeader(String name)|boolean|설정한 헤더 이름 name이 HTTP 헤더에 포함되었는지 여부를 확인한다. 포함하고 있는 경우 true를 반환하고, 그렇지 않은 경우 false를 반환한다.|
|getHeader(String name)|String|설정한 헤더 이름 name 값을 가져온다.|

</br>

### 응답 콘텐츠 관련 메소드

- response 내장 객체는 웹 브라우저로 응답하기 위해 MIME 유형, 문자 인코딩, 오류 메시지, 상태 코드 등을 설정하고 가져오는 응답 콘텐츠 관련 메소드를 제공한다.
- 응답 콘텐츠 관련 메소드의 종류

|응답 콘텐츠 관련 메소드|반환 유형|설명|
|---------------------|--------|----|
|setContentType(String type)|void|웹 브라우저에 응답할 MIME 유형을 설정한다.|
|getContentType()|String|웹 브라우저에 응답할 MIME 유형을 가져온다.|
|getCharacterEncoding(String charset)|void|웹 브라우저에 응답할 문자 인코딩을 설정한다.|
|getCharacterEncoding()|String|웹 브라우저에 응답할 문자 인코딩을 가져온다.|
|sendError(int status_code, String message)|void|웹 브라우저에 응답할 오류(코드 및 오류 메시지)를 설정한다.|
|setStatus(int statuscode)|void|웹 브라우저에 응답할 HTTP 코드를 설정한다.|

</br>

### out 내장 객체의 기능과 사용법

- out 내장 객체는 웹 브라우저에 데이터를 전송하는 출력 스트림 객체이다.
- JSP 컨테이너는 JSP 페이지에 사용되는 모든 표현문 태그와 HTML, 일반 텍스트 등을 out 내장 객체를 통해 웹 브라우저에 그대로 전달한다.
- out 내장 객체는 스크립틀릿 태그에 사용하여 단순히 값을 출력하는 표현문 태그(<%=...%>)와 같은 결과를 얻을 수 있다.
- out 내장 객체 메소드의 종류

|out 내장 객체 메소드|반환 유형|설명|
|------------------|---------|----|
|print(String str)|void|설정된 str 값을 웹 브라우저에 출력한다.|
|println(String str)|void|설정된 str 값을 웹 브라우저에 출력한다. 이때 줄 바꿈이 적용되지 않는다.|
|newLine()|void|줄바꿈을 출력한다.|
|getBufferSize()|int|현재 출력 버퍼의 크기를 가져온다.|
|getRemaining()|int|현재 남아 있는 출력 버퍼의 크기를 가져온다.|
|clear()|void|현재 출력 버퍼에 저장되어 있는 내용을 웹 브라우저에 전송하지 않고 비운다. </br> 만약 버퍼가 이미 플러시되었다면 IOException이 발생한다.|
|clearBuffer()|void|현재 출력 버퍼에 저장되어 있는 내용을 웹 브라우저에 전송하지 않고 비운다. </br> 만약 버퍼가 이미 플러시되었다면 IOException이 발생하지 않는다.|
|flush()|void|현재 출력 버퍼에 저장되어 있는 내용을 웹 브라우저에 전송하고 비운다.|
|isAutoFlush()|boolean|출력 버퍼가 채워졌을 때의 처리를 결정한다. 자동으로 플러시하는 경우 true를 반환하고, 그렇지 않은 경우 false를 반환한다.|

</br>

# 폼 태그

## 폼 처리의 개요

- 폼(form)은 사용자가 웹 브라우저를 통해 입력된 모든 데이터를 한 번에 웹 서버로 전송하는 양식이다.
- 전송한 데이터는 웹 서버가 처리하고 처리 결과에 따라 다른 웹 페이지를 보여준다.
- 폼은 사용자와 웹 애플리케이션이 상호 작용하는 중요한 기술 중 하나이다.
- 사용자가 어떤 내용을 원하는지, 사용자의 요구 사항이 무엇인지 파악할 때 가장 많이 사용하는 웹 애플리케이션의 필수적인 요소이다.
- 폼 데이터 처리 과정
  1. 폼이 있는 웹 페이지를 요청하고 폼 내용을 입력
  2. 폼 안에 있는 모든 데이터를 웹 서버로 보낸다.
  3. 웹 서버는 전송받은 폼 데이터를 처리하기 위해 JSP 컨테이너로 넘긴다.
  4. JSP 컨테이너는 폼 데이터를 처리한다.
  5. 처리 결과에 따라 새로운 웹 페이지를 웹 서버로 보낸다.
  6. 웹 서버는 전송받은 웹 페이지를 웹 브라우저로 보낸다.
  7. 웹 브라우저는 전송받은 결과 웹 페이지를 보여준다.

- 폼을 구성하는 태그의 종류

|태그|설명|
|----|----|
|form|폼을 정의하는 태그로 최상위 태그이다.|
|input|사용자가 입력할 수 있는 태그이다.|
|select|항목을 선택할 수 있는 태그이다.|
|textarea|여러 줄을 입력할 수 있는 태그이다.|

</br>

## form 태그의 기능과 사용법

- form 태그는 사용자가 다양한 정보를 입력하고 서로 전달할 때 사용하는 태그이다.
- 단독으로 쓰이지 않고 사용자가 다양한 정보를 입력하는 양식을 포함하는 최상위 태그
- 속성을 이용하여 어디로 보낼지, 어떤 방식으로 보낼지 설정할 수 있다

 ```
 <form 속성1="값1" [속성2= "값2"...]>
    //다양한 입력 양식 태그(<input>, <select>, <textarea>)
 </form>
 ```
 
- form 태그의 속성
 
|속성|설명|
|----|----|
|action|폼 데이터를 받아 처리하는 웹 페이지의 URL을 설정한다.|
|method|폼 데이터가 전송되는 HTTP 방식을 설정한다.|
|name|폼을 식별하기 위한 이름을 설정한다.|
|target|폼 처리 결과의 응답을 실행할 프레임을 설정한다.|
|enctype|폼을 전송하는 콘텐츠 MIME 유형을 설정한다.|
|accept-charset|폼 전송에 사용할 문자 인코딩을 설정한다.|

> **GET방식과 POST 방식의 차이**
> URL 끝에 데이터를 붙여 보내는 GET 방식은 데이터가 외부에 노출되어 보안에 취약하다.
> 개인 정보 등을 보호해야 할 때는 POST 방식을 사용해야 한다.
> GET 방식은 지정된 리소스에서 데이터를 요청할 때, 즉 읽을 때 사용한다.
> POST 방식은 지정된 리소스에서 데이터를 처리할 때, 즉 쓰고, 수정하고, 삭제할 때 사용한다.
> 
> |구분|GET 방식|POST 방식|
> |----|-------|---------|
> |전송 형태|이름과 값의 형태로 URL에 포함되어 전송|HTTP 헤더 속에 감춰서 전송|
> |전송량|제한적(4,096B)|제한 없음|
> |속도|빠름|느림|
> |보안|없음|있음|

</br>

## input 태그의 기능과 사용법

- input 태그는 사용자가 텍스트 입력이나 선택 등을 다양하게 할 수 있도록 공간을 만드는 태그이다.
- input 태그는 종료 태그 없이 단독으로 사용할 수 있다.

```
<input 속성1="값1" [속성2="값2" ...]>
```

- iput 태그의 속성

|속성|속성 값|설명|
|----|------|---|
|type|text|기본 값으로 한 줄의 텍스트를 입력할 때 사용한다.|
|type|radio|라디오 버튼으로 열거된 것 중 하나만 선택할 때 사용한다.|
|type|checkbox|체크 박스로 열거된 것 중 다중 선택을 할 때 사용한다.|
|type|password|암호를 입력할 때 사용한다.|
|type|hidden|보이지 않게 숨겨서 값을 전송할 때 사용한다.|
|type|file|파일 업로드를 위한 파일을 선택할 때 사용한다.|
|type|button|버튼 모양을 출력할 때 사용한다.|
|type|reset|폼에 입력된 값을 모두 초기화할 때 사용한다.|
|type|submit|폼에 입력된 값을 모두 초기화할 때 사용한다.|
|name|텍스트|입력 양식을 식별하는 이름을 설정한다.|
|value|텍스트|입력 양식의 초깃값을 설정한다.|

</br>

> - input 태그의 기본 속성 외에 사용되는 속성
> 
> |속성|속성 값|설명|
> |----|------|----|
> |readonly||입력 양식을 읽기 전용으로 설정한다.|
> |maxlength|숫자|입력 양식의 최대 입력 글자 수를 설정한다. type="text"인 경우에만 사용한다.|
> |size|숫자|입력 양식의 너비를 설정한다. type="text"인 경우에만 사용한다.|
> |disabled||해당 입력 양식을 비활성화로 설정한다. 모든 폼 구성 태그에 사용한다.|
> |checked||기본 값을 선택할 때 설정한다. type="checkbox" 또는 type="radio"인 경우에만 사용한다.|
>
> - HTML5의 추가된 속성
> 
> |속성|속성 값|설명|
> |----|------|----|
> |required||입력 양식을 필수 태그로 설정한다. 필수 태그를 입력하지 않고 submit 버튼을 누르면 오류 메시지가 웹 브라우저에 출력된다.|
> |autofocus||웹 페이지가 로딩되자마자 해당 입력 양식의 포커스를 설정한다.|
> |placeholder|텍스트|입력 양식의 힌트를 설정한다.|
> |pattern|regexp|정규 표현식을 사용하여 특정 범위 내의 유효한 값을 입력받을 때 사용한다.|

</br>

## select 태그의 기능과 사용법

- select 태그는 여러 개의 항목이 나타나는 목록 상자에서 항목을 선택하는 태그
- select 태그에는 시작 태그와 종료 태그가 있으며, 리스트 박스에 여러 항목을 추가 삽입하기 위해 반드시 option 태그를 포함해야 한다.

```
<select 속성1="값1" [속성2="값2" ...]>
    <option 속성1="값" [속성1]> 항목1</option>
    <option 속성2="값" [속성2]> 항목2</option>
</select>
```

</br>

- select 태그의 속성

|속성|속성 값|설명|
|---|-------|----|
|name|텍스트|목록 상자의 이름을 설정한다.|
|size|숫자|한 번에 표시할 항목의 개수를 설정한다.|
|multiple||다중 선택이 가능하도록 한다. cntl키를 눌러 목록 상자의 항목을 다중 선택한다.|

- optin 태그의 속성

|속성|속성 값|설명|
|----|------|---|
|value|텍스트|항목 값을 설정한다.|
|selected||해당 항목을 초깃값으로 선택한다.|
|disabled||항목을 비활성화한다.|

> optgroup 태그로 항목을 그룹으로 만들 수 있다. label 속성을 사용하여 그룹으로 만들 이름을 설정하며, optgroup 태그 하위에 option 태그를 포함해야 한다.

</br>

## textarea 태그의 기능과 사용법

- textarea 태그는 여러 줄의 텍스트를 입력할 수 있는 태그이다.
- 입력 폼 안에 사용된 태그와 띄어쓰기가 그대로 출력된다.

```
<textarea cols="너비 값" rows="높이 값">
...생략
</textarea>
```

</br>

- textarea 태그의 속성

|속성|속성 값|설명|
|----|------|---|
|name|텍스트|이름을 설정한다.|
|cols|숫자|입력할 텍스트 영역의 너비(열 크기)를 설정한다.|
|rows|숫자|입력할 텍스트 영역의 높이(행 크기)를 설정한다.|
||off|줄 바꿈을 설정한다.|
|wrap|soft|enter를 누르지 않아도 텍스트라인 끝에서 자동으로 행이 바뀐다.|
||hard|실제 내용을 서버에 전송할 때 캐리지 리턴 문자를 전달한다.|

</br>

## 폼 데이터 처리하기

- JSP에서 가장 많이 사용하는 기능 중 하나는 사용자가 웹 브라우저의 폼 페이지에 입력한 데이터를 서버로 전달하여 서버가 이를 처리하는 것이다.
- 폼 데이터를 처리함으로써 표현문이나 스크립틀릿 태그에 request 내장 객체를 이용하여 폼 페이지에서 전달된 값을 얻을 수 있다.

### 요청 파라미터의 값 받기

- request 내장 객체는 웹 브라우저가 서버로 보낸 요청에 대한 다양한 정보를 담고 있어 getParameter()메소드를 이용하여 요청 파라미터의 값을 얻을 수 있다.

```
String 변수 = request.getParameter(요청 파라미터 이름);
```

### 요청 파라미터의 전체 값 받기

- 일괄 처리 메소드를 이용하면 웹 브라우저에서 서버로 전송되는 요청 파라미터를 설정하지 않아도 모든 값을 전달받을 수 있다.
- 폼 데이터의 일괄 처리 메소드

|메소드|형식|설명|
|------|---|----|
|getParameterNames()|java.util.Enumeration|모든 입력 양식의 요청 파라미터 이름을 순서에 상관없이 Enumeration(열거형)형태로 전달받는다.|
|hasMoreElements()||Enumeration(열거형) 요소가 있으면 true를 반환하고, 그렇지 않으면 false를 반환한다.|
|nextElement()||Enumeration 요소를 반환한다.|

</br>

# 파일 업로드
