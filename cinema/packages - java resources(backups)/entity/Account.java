/**
 * @author GustavoGomez
 * CSCI 4050 - Software Engineering 
 * 	
 *	Account class for Cinema E-Booking System. 
 */
package entity;

public class Account
{
	private String username; 
	private String password; 
	
	//Default Constructor 
	public Account() 
	{
		this.setUsername("");
		this.setPassword("");
	}
	
	public Account(String user, String pass)
	{
		this.username = user; 
		this.password = pass;
	}

	//Getters and Setters for declared variables 
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
