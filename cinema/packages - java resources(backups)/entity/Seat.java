package entity;

public class Seat
{
	private int seatID;
	private boolean isFilled;
	private int showing_id;
	
	public Seat()
	{
		seatID = -1;
		isFilled = false;
	}
	
	public Seat(int seatID, boolean isFilled, int showing_id)
	{
		this.seatID = seatID;
		this.isFilled = isFilled;
		this.showing_id=showing_id;
	}
	
	public int getSeatID()
	{
		return seatID;
	}
	public boolean getIsFilled()
	{
		return isFilled;
	}
	
	
	public void setSeatID(int seatID)
	{
		this.seatID = seatID;
	}
	
	public void setIsFilled(boolean isFilled)
	{
		this.isFilled = isFilled;
	}
	
	public void setShowingId(int showing_id){
		this.showing_id=showing_id;
	}
	public int getShowingId(){
		return showing_id;
	}
}