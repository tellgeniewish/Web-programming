package jspbook.pr30;

public class LoginBean {
	private String id, pw, email, birth;
	private Integer gender;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public boolean isGrownUp() {
		String[] dArray = birth.split("-");
		int age = Integer.parseInt(dArray[0]);
		age = 2023 - age;
		if (20 <= age)
			return true;
		else
			return false;
	}
}
