package lab8;

public class UserBean {

	private String first = "drew";
	private String last = "craig";
	private String username;

	public UserBean() {
		super();
	}

	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullName() {
		return first + " " + last;
	}
	
	public String getInitials() {
		String initials = first.substring(0,1) + "." + last.substring(0,1) + ".";
		return initials;
	}
}