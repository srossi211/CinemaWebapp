package entity;
import java.util.*;
import java.lang.*;


public class Showing
{
	private int numTicketsAvailable;
	private int hall_id;
	private int movie_id; 
	private String time;
	private String date;

		
	public Showing(int numTicketsAvailable, int hall_id, int movie_id, String time, String date)
	{
		this.numTicketsAvailable=numTicketsAvailable;
		this.hall_id=hall_id;
		this.movie_id=movie_id;
		this.time=time;
		this.date=date;
	}
	public int getNumTicketsAvailable(){ 
		return numTicketsAvailable;
	}

	//returns false if showing is full
	public boolean bookTicket(){
		if(numTicketsAvailable == 0) {
			return false;
		} else {
			return true;
		}
	}

	public int getHall() {
		return hall_id;
	}

	public void setHall(int hall_id){ 
		this.hall_id=hall_id;
	}

	public String getTime(){
		return time;
	}

	public void setTime(String time) {
		this.time=time;
	}
	public String getDate(){
		return date;
	}

	public void setDate(String date) {
		this.date=date;
	}
	public int getMovie(){
		return movie_id;
	}
	public void setMovie(int m) {
		this.movie_id=m;
	}

}