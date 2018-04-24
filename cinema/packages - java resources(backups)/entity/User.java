/**
 * @author GustavoGomez
 * CSCI 4050 - Software Engineering
 * 
 * User class for Cinema E-Booking System 
 */

public class User 
{
	//Declared variables 
	public Customer customer;
	
	//Default Constructor 
	public User() 
	{
		this.customer = null; 
	}

	public void subscribe()
	{
		//here User should subscribe to promo codes. 
		/* if (this.customer.getHasPromo() == false)
		 * {
		 * 		this.customer.setHasPromo(true); 
		 * }
		 * 
		 */
	}
	
	public void editProfile()
	{
		//not sure how to implement it  
	}
	
	public void viewOrderHistory()
	{
		//allows you to view the orderHistory of customer
		/*
		 * guess we can make an arraylist of tickets ordered and then print 
		 * out the list in order? 
		 * 
		 */
	}
}
