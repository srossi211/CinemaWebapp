import data.MysqlCon;

package entityManagment;

public class MovieBean implements Serializable
{

	MysqlCon database;

	public MovieBean()
	{
		//Aquire databse here
	}

	public MysqlCon getDatabase()
	{
		return database;
	}

	public void setDatabase(MysqlCon database)
	{
		this.database = database;
	}

	public String[][] getDatabaseInfo()
	{
		for(int i=0; i<database.count(); i++)
		{
			//Sort the database stuff in here
		}
	}
}