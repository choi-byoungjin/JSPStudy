package ch04.com.dao;//Person 클래스를 생성할 때 패키지 이름을 ch04.com.dao로 작성하면 자동으로 추가된다.

public class Person {
	private int id = 20181004;//정수 유형의 멤버 변수 id과 초깃값을 작성한다.
	private String name = "홍길순";//문자열 유형의 멤버 변수 name과 초깃값을 작성한다.
	
	public Person() {
		
	}//7~9 : 인수 없는 기본 생성자를 작성한다.
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}//11~25 : 멤버 변수 id, name에 대한 Getter/Setter() 메소드를 작성한다.
}