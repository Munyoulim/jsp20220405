package chap11;

// Student 클래스를 사용하고 싶은데
// 생성자 선언하지 않으면 사용할수가 없다. (필드 생성 후 사용하고 싶으면 생성자 선언 필수)
// 만약 파라미터 없는 생성자만 필요한 경우,
// 자동으로 추가 되기때문에 사용에 문제가 없지만..
// 파라미터 있는 생성자가 필요할 경우에는,
// !!! 파라미터 없는 생성자가 자동으로 추가가 되지 않기 때문에 !!!
// 파라미터 있는 생성자, 파라미터 없는 생성자 둘다 선언해줘야 사용가능하다.

public class Student {
	private String name;
	private String gender;
	private int score;

	public Student() {

	}

	public Student(String name, String gender, int score) {
		this.name = name;
		this.gender = gender;
		this.score = score;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
}
