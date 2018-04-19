/**
 * @author GustavoGomez
 * CSCI 4050 - Software Engineering 
 * 
 * PaymentInfo Class for Cinema E-Booking System 
 */
package entity;
import java.util.Date;

public class PaymentInfo
{
	//Declared variables 
	private int customer_id; 
	private String cardType; 
	private String cardNumber;
	private String expDate; 
	
	//Default Constructor 
	public PaymentInfo()
	{
		this.customer_id = -1;
		this.cardType = ""; 
		this.cardNumber = ""; 
		this.expDate = null;
	}
	
	public PaymentInfo(int customer_id, String cardType, String cardNum, String expDate)
	{
		this.customer_id = customer_id;
		this.cardType = cardType; 
		this.cardNumber = cardNum; 
		this.expDate = expDate; 
		
	}
	
	//Getters and Setters for declared variables 
	public int getCustomer() {
		return customer_id;
	}


	public String getCardType() {
		return cardType;
	}


	public void setCardType(String cardType) {
		this.cardType = cardType;
	}


	public String getCardNumber() {
		return cardNumber;
	}


	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}


	public String getExpDate() {
		return expDate;
	}


	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}


	public boolean verifyPaymentInfo()
	{
		return (this.customer_id != -1 && !this.cardType.isEmpty() &&
				 !this.cardNumber.isEmpty() && this.expDate != null);
	}
}
