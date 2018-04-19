package entity;
import java.util.*;

public class Customer
{
	private int customerID; 
	private String email; 
	private String streetAddress;
	private String phoneNumber;
	private String city; 
	private String state; 
	private String zipCode; 
	private boolean hasPromo;  	
	private int[] orderHist; 
	private String password;
	
	//default Constructor 
	public Customer()
	{
		this.customerID = -1; 
		this.email = ""; 
		this.streetAddress = ""; 
		this.phoneNumber = ""; 
		this.city = ""; 
		this.state = ""; 
		this.zipCode = "";
		this.hasPromo = false;
	}
	
	public Customer(int id, String email, String sa, 
					String phoneNo, String city, String state, 
					String zipCode, boolean hasPromo, 
					String password, int[] orderHist)
	{
		this.customerID = id; 
		this.email = email; 
		this.streetAddress = sa; 
		this.phoneNumber = phoneNo; 
		this.city = city; 
		this.state = state; 
		this.zipCode = zipCode; 
		this.hasPromo = hasPromo;
		this.orderHist = orderHist;
		this.password = password;
	}
	
	//Getter and Setter methods for declared variables
	
	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password=password;
	}

	public int getCustomerID() 
	{
		return customerID;
	}
	
	public void setCustomerID(int customerID) 
	{
		this.customerID = customerID;
	}
	
	public String getEmail() 
	{
		return email;
	}
	
	public void setEmail(String email) 
	{
		this.email = email;
	}
	
	public String getStreetAddress() 
	{
		return streetAddress;
	}
	
	public void setStreetAddress(String streetAddress) 
	{
		this.streetAddress = streetAddress;
	}
	
	public String getPhoneNumber() 
	{
		return phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber)
	{
		this.phoneNumber = phoneNumber;
	}
	
	public String getCity()
	{
		return city;
	}
	
	public void setCity(String city)
	{
		this.city = city;
	}
	
	public String getState()
	{
		return state;
	}
	
	public void setState(String state)
	{
		this.state = state;
	}
	
	public String getZipCode()
	{
		return zipCode;
	}
	
	public void setZipCode(String zipCode) 
	{
		this.zipCode = zipCode;
	}
	
	public boolean getHasPromo()
	{
		return hasPromo;
	}
	
	public void setHasPromo(boolean promo)
	{
		this.hasPromo = promo;
	}

	public int[] getOrderHist() {
		return orderHist;
	}

	public void setOrderHist(int [] orderHist) {
		this.orderHist = orderHist;
	}
	
}
