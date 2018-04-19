package entity;

public class Ticket
{
	private Seat seat;
	private Showing	showing;
	private int ticketID;
	private int ticketType;
	
	public Ticket()
	{
		seat = null;
		showing = null;
		ticketID = -1;
		ticketType = -1;
	}
	
	public Ticket(Seat seat, Showing showing, int ticketID, int ticketType)
	{
		this.seat = seat;
		this.showing = showing;
		this. ticketID = ticketID;
		tis. ticketType = ticketType;
	}
	
	public Seat getseat()
	{
		return seat;
	}

	public Showing getShowing()
	{
		return Showing;
	}

	public int getTicketID()
	{
		return ticketID;
	}

	public int getTicketType()
	{
		return ticketType;
	}

	public void setSeat(Seat seat)
	{
		this.seat = seat;
	}
	public void	setShowing(Showing showing)
	{
		this.showing = showing;
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
