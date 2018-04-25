package data;

import java.io.*;

public class DataBean implements Serializable
{

	public DataBean()
	{
	}

	public String[][] getMovieInfo()
	{
		return MysqlCon.getMovieInfo();
	}

	public int movieCount()
	{
		return MysqlCon.getMovieCount();
	}

	public String addMovie(String name, String showing, String director, String producer, String cast, String picture, String trailer, String rating, String synopsis)
	{
		return MysqlCon.addMovie(name, showing, director, producer, cast, picture, trailer, rating, synopsis);
	}

	public String updateMovie(String id, String name, String showing, String director, String producer, String cast, String picture, String trailer, String rating, String synopsis)
	{
		return MysqlCon.updateMovie(id, name, showing, director, producer, cast, picture, trailer, rating, synopsis);
	}

	public String deleteMovie(String id)
	{
		return MysqlCon.deleteMovie(id);
	}

	public String[][] getShowingInfo()
	{
		return MysqlCon.getShowingInfo();
	}

	public int showingCount()
	{
		return MysqlCon.getShowingCount();
	}

	public String addShowing(String movie, String hall, String tickets, String date, String time)
	{
		return MysqlCon.addShowing(movie, hall, tickets, date, time);
	}

	public String updateShowing(String id, String movie, String hall, String tickets, String date, String time)
	{
		return MysqlCon.updateShowing(id, movie, hall, tickets, date, time);
	}

	public String deleteShowing(String id)
	{
		return MysqlCon.deleteShowing(id);
	}
}