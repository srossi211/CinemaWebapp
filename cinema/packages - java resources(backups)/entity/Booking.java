
package entity;
import java.util.*;

public class Booking
{
	private int bookingID;
	private String date;
	private double totalPrice;
	
	public Booking()
	{
		bookingID = -1;
		date = "";
		totalPrice = -1.0;
	}
	
	public Booking(int bookingID, String date, double totalPrice)
	{
		this.bookingID = bookingID;
		this.date = date;
		this.totalPrice = totalPrice;
	}
	
	public int getBookingID()
	{
		return bookingID;
	}

	public String getDate()
	{
		return date;
	}

	public double getTotalPrice()
	{
		return totalPrice;
	}

	public void setbookingID(int bookingID)
	{
		this.bookingID = bookingID;
	}
	
	public void setdate(String date)
	{
		this.date = date;
	}
	
	public void settotalPrice(double totalPrice)
	{
		this.totalPrice = totalPrice;
	}	
}