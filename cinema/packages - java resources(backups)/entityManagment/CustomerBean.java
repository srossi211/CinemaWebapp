
package entityManagment;

import data.MysqlCon;

public class CustomerBean implements Serializable
{

	MysqlCon database;

	public CustomerBean()
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
