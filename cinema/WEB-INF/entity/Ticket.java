package entity;
import java.util.*;


public class Ticket
{
	private int seat_id;
	private int	showing_id;
	private int ticketID;
	private int ticketType;
	
	public Ticket()
	{
		seat_id = -1;
		showing_id = -1;
		ticketID = -1;
		ticketType = -1;
	}
	
	public Ticket(int seat_id, int showing_id, int ticketID, int ticketType)
	{
		this.seat_id = seat_id;
		this.showing_id = showing_id;
		this.ticketID = ticketID;
		this.ticketType = ticketType;
	}
	
	public int getseat()
	{
		return seat_id;
	}

	public int getShowing()
	{
		return showing_id;
	}

	public int getTicketID()
	{
		return ticketID;
	}

	public int getTicketType()
	{
		return ticketType;
	}

	public double getPrice(){
		if(this.ticketType == 0) {
			return 5.00;
		} else if(this.ticketType == 1) {
			return 11.00;
		}
		else {
			return 16.00;
		}
	}

	public void setSeat(int seat)
	{
		this.seat_id = seat;
	}
	public void	setShowing(int showing)
	{
		this.showing_id = showing;
	}
	public void setTicketID(int ticketID)
	{
		this.ticketID = ticketID;
	}
	public void setTicketType(int ticketType)
	{
		this.ticketType = ticketType;
	}
}