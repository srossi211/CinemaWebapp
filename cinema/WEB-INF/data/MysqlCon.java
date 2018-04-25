package data;
import java.sql.*;
import java.io.*;

//import com.mysql.jdbc.Driver;

public class MysqlCon{
	public static Connection connect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cinema","root","root");
			return con;
		} catch(Exception e) { 
			System.out.println(e);
		}
		return null;
	}
	
	public static int insertCustomer(int customer, String email, String fname, String lname, String password, String phoneNumber, String street_address, String city, String state, String zipcode, String has_promo, String account) {
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			int i=st.executeUpdate("insert into customer values ('"+customer+"', '"+email+"', '"+fname+"',  '"+lname+"',  '"+password+"',  '"+phoneNumber+"',  '"+street_address+"',  '"+city+"',  '"+state+"',  '"+zipcode+"',  '"+account+"',  '"+has_promo+"')");
			return i;
		} catch(Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	public static int insertPayment(int customer, String card_type, String card_number, int security_code, String billing_zip, String exp_date) {
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			int i=st.executeUpdate("insert into payment_info values ('"+billing_zip+"', '"+card_type+"', '"+exp_date+"',  '"+customer+"',  '"+card_number+"',  '"+security_code+"')");
			return i;
		} catch(Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public static int getNextId() {
		int max=0;
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
			try{
				ResultSet rs = st.executeQuery("select MAX(customer_id) as customer_id from cinema.customer");
				if(rs.next()) {
					max = rs.getInt("customer_id");
				}
				max=max+1;
				return max;
			}catch(Exception e) {
				return -11;
			}
		}catch(Exception e) {
			System.out.println(e);
			return -100;
		}
	}

	public static int getNextMovieId() {
		int max=0;
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
			try{
				ResultSet rs = st.executeQuery("select MAX(movie_id) as m_id from cinema.movie");
				if(rs.next()) {
					max = rs.getInt("m_id");
				}
				max=max+1;
				return max;
			}catch(Exception e) {
				return -11;
			}
		}catch(Exception e) {
			System.out.println(e);
			return -100;
		}
	}

	public static int passwordCheck(String uname, String psw) {
		String query = "select email as e, password as p from cinema.customer where email = '" + uname + "'";
		String email="";
		String pass="";
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				email = rs.getString("e");
				pass = rs.getString("p");
				System.out.println(email +" " + pass);
			}
			if((pass.equals(psw) == true) && (email.equals(uname) == true)) {
					return 1;
			} else {
					return 0;
			}

		} catch(Exception e) {
			System.out.println(e);
			return 100;
		}
		
	}
	public static int passwordCheckEmp(int uname, String psw) {
		String query = "select employee_id as e, password as p from cinema.employees where employee_id = '" + uname +"'";
		int id=-1;
		String pass="";
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				id = rs.getInt("e");
				pass = rs.getString("p");
				System.out.println(id +" " + pass);
			}
			if((pass.equals(psw) == true) && (id == uname)) {
				return 1;
				}
			else {
				return 0;
			}	
		} catch(Exception e) {
			System.out.println(e);
			return 100;
		}
	}
	/*need to figure out how to access the entity classes*/
	public static String[] movieDetails(String movie_name) {
		String[] none = {"No Movies Found"};
		String cast_list = "";
		String producer ="";
		String director ="";
		String synopsis ="";
		String picture ="";
		int rating =-1;
		String currently_showing="";
		String trailer="";
		String query = "select movie_id as id, cast_list as c, producer as p, director as d, synopsis as s, picture as pic, rating as r, currently_showing as cs, trailer as t from cinema.movie WHERE movie_name="+movie_name;
		int movie_id=-1;
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				movie_id = rs.getInt("id");
				cast_list = rs.getString("c");
				producer = rs.getString("p");
				director = rs.getString("d");
				synopsis = rs.getString("s");
				picture = rs.getString("pic");
				rating = rs.getInt("r");
				currently_showing = rs.getString("cs");
				trailer = rs.getString("t");
			}	
			String [] movie_info = {movie_name, cast_list, producer, director, synopsis, picture, currently_showing, trailer};
			return movie_info;

		} catch(Exception e) {
			System.out.println(e);
			return none;
		}
	}
	//returns movie id
	public static int searchMovie(String movie){ 
		int id=-1;
		String query = "select movie_id as id FROM cinema.movie WHERE movie_name="+movie;
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				id = rs.getInt("id");
			}	
			
			return id;

		} catch(Exception e) {
			System.out.println(e);
			return id;
		}
	}

	public static int getMovieCount()
	{
		int ret = -1;
		String query = "select COUNT(*) as n from movie";
		try
		{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs = st.executeQuery(query);
			if(rs.next())
			{
				ret= rs.getInt("n");
			}

			return ret;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return ret;
		}
	}

	public static String[][] getMovieInfo()
	{
		String[][] ret = new String[getMovieCount()][10];
		String query = "select movie_id as id, movie_name as n, cast_list as c, producer as p, director as d, synopsis as s, picture as pic, rating as r, currently_showing as cs, trailer as t from movie;";
		try
		{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs = st.executeQuery(query);
			//Sort things out.
			for(int i=0; i<getMovieCount(); i++)
			{
				if(rs.next())
				{
					ret[i][0] = String.valueOf(rs.getInt("id"));
					ret[i][1] = rs.getString("n");
					ret[i][2] = rs.getString("c");
					ret[i][3] = rs.getString("p");
					ret[i][4] = rs.getString("d");
					ret[i][5] = rs.getString("s");
					ret[i][6] = rs.getString("pic");
					ret[i][7] = String.valueOf(rs.getInt("r"));
					ret[i][8] = String.valueOf(rs.getInt("cs"));
					ret[i][9] = rs.getString("t");
				}
			}

			return ret;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return ret;
		}
	}

	public static String addMovie(String name, String show, String dir, String prod, String cast, String pic, String trail, String rate, String syn)
	{
		String query = "INSERT INTO movie (movie_id, movie_name, cast_list, producer, director, synopsis, picture, rating, currently_showing, trailer) VALUES ('"+getNextMovieId()+"', '"+name+"', '"+cast+"', '"+prod+"', '"+dir+"', '"+syn+"', '"+pic+"', '"+rate+"', '"+show+"', '"+trail+"')";
		try
		{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			int i = st.executeUpdate(query);
			return "All good?";
		}
		catch(Exception e)
		{
			System.out.println(e);
			return e.toString();
		}
	}

	public static String updateMovie(String id, String name, String show, String dir, String prod, String cast, String pic, String trail, String rate, String syn)
	{
		String query = "UPDATE movie SET movie_name = '"+name+"' , currently_showing = '"+show+"', director = '"+dir+"', producer = '"+prod+"', cast_list = '"+cast+"', picture = '"+pic+"', trailer = '"+trail+"', rating = '"+rate+"', synopsis = '"+syn+"' WHERE movie_id = "+id+";";
		try
		{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			int i = st.executeUpdate(query);
			return "All good?";
		}
		catch(Exception e)
		{
			System.out.println(e);
			return e.toString();
		}
	}

	public static String deleteMovie(String id)
	{
		String query = "DELETE FROM movie WHERE movie_id = "+id+";";
		try
		{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			int i = st.executeUpdate(query);
			return "All good?";
		}
		catch(Exception e)
		{
			System.out.println(e);
			return e.toString();
		}
	}
}

/*  EXAMPLES

Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from emp");  
while(rs.next())  
System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
con.close();  

*/