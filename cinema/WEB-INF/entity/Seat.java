package entity;

public class Seat
{
	private int seatID;
	private boolean isFilled;
	private Hall hall;
	private Ticket ticket;
	private Showing showing;
	
	public Seat()
	{
		seatID = -1;
		isFilled = false;
		hall = null;
		ticket = null;
		showing = null;
	}
	
	public Seat(int seatID, boolean isFilled, Hall hall, Ticket ticket, Showing showing)
	{
		this.seatID = seatID;
		this.isFilled = isFilled;
		this.hall = hall;
		this.ticket = ticket;
		this.showing = showing;
	}
	
	public int getSeatID()
	{
		return seatID;
	}
	public boolean getIsFilled()
	{
		return isFilled;
	}
	public Hall getHall()
	{
		return hall;
	}
	public Ticket getTicket()
	{
		return ticket;
	}
	public Showing getShowing()
	{
		return showing;
	}
	
	public void setSeatID(int seatID)
	{
		this.seatID = seatID;
	}
	
	public void setIsFilled(boolean isFilled)
	{
		this.isFilled = isFilled;
	}
	
	public void setHall(Hall hall)
	{
		this.hall = hall;
	}
	
	public void setTicket(Ticket ticket)
	{
		this.ticket = ticket;
	}
	
	public void setShowing(Showing showing)
	{
		this.showing = showing;
	}
}