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
}