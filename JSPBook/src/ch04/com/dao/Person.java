package ch04.com.dao;//Person Ŭ������ ������ �� ��Ű�� �̸��� ch04.com.dao�� �ۼ��ϸ� �ڵ����� �߰��ȴ�.

public class Person {
	private int id = 20181004;//���� ������ ��� ���� id�� �ʱ갪�� �ۼ��Ѵ�.
	private String name = "ȫ���";//���ڿ� ������ ��� ���� name�� �ʱ갪�� �ۼ��Ѵ�.
	
	public Person() {
		
	}//7~9 : �μ� ���� �⺻ �����ڸ� �ۼ��Ѵ�.
	
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
	}//11~25 : ��� ���� id, name�� ���� Getter/Setter() �޼ҵ带 �ۼ��Ѵ�.
}