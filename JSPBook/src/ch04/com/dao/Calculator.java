package ch04.com.dao;//Calculator 클래스를 생성할 때 패키지 이름을 ch04.com.dao로 작성하면 자동으로 추가된다.

public class Calculator {
	public int process(int n) {
		return n * n * n;
	}//4~6행 : 정수 유형의 매개변수 n의 세제곱을 계산하고 이를 반환하는 process() 메소드를 작성한다.
}