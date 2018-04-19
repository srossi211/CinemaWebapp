import java.util.*;

package entity;

public class Booking
{
	private int bookingID;
	private Date date;
	private double totalPrice;
	private Promo promo;
	
	public Booking()
	{
		bookingID = -1;
		date = new Date();
		totalPrice = -1.0;
		promo = null;
	}
	
	public Booking(int bookingID, Date date, double totalPrice, Promo promo)
	{
		this.bookingID = bookingID;
		this.date = date;
		this.totalPrice = totalPrice;
		this.promo = promo;
	}
	
	public int getBookingID()
	{
		return bookingID;
	}

	public Date getDate()
	{
		return date;
	}

	public double getTotalPrice()
	{
		return totalPrice;
	}

	public Promo getPromo()
	{
		return promo;
	}

	public void setbookingID(int bookingID)
	{
		this.bookingID = bookingID;
	}
	
	public void setdate(Date date)
	{
		this.date = date;
	}
	
	public void settotalPrice(double totalPrice)
	{
		this.totalPrice = totalPrice;
	}
	
	public void setpromo(Promo promo)
	{
		this.promo = promo;
	}
	
}