package lab8;

public class AddressBean {

	private String city;
	private String state;

    public AddressBean() {
        super();
    }
    
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public String getFullName() {
		return city + ", " + state;
	}

}
