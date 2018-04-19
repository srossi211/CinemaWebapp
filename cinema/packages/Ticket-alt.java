
/**
 * @author Chris Callahan
 * CSCI 4050 - Software Engineering 
 * 
 * Ticket Class for Cinema E-Booking System
 */
package entity;
public class Ticket extends Seat{

	private int booking_id;
	private int type;

	public Ticket(int booking_id, int type) {
		this.booking_id=booking_id;
		this.type=type;
	}
	
	public int getTicketType(){
		return type;
	}
	public void setTicketType(int type) {
		this.type=type;
	}
	public int getBookingId(){
		return booking_id;
	}
	public void setBookingId(int id)
	{
		this.booking_id=id;
	}
	public double getPrice(){
		if(this.type == 0) {
			return 5.00;
		} else if(this.type == 1) {
			return 11.00;
		}
		else {
			return 16.00;
		}
	}
}