package MysqlCon;
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
	
	public int insertCustomer(int customer, String email, String fname, String lname, String password, String phoneNumber, String street_address, String city, String state, String zipcode, String has_promo, String account) {
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			int i=st.executeUpdate("insert into customer values ('"+customer+"', '"+email+"', '"+fname+"',  '"+lname+"',  '"+password+"',  '"+phoneNumber+"',  '"+street_address+"',  '"+city+"',  '"+state+"',  '"+zipcode+"',  '"+account+"',  '"+has_promo+"')");
			return i;
		} catch(Exception e) {
			System.out.println(e);
			return 0;
		}
	}
	public int insertPayment(int customer, String card_type, String card_number, int security_code, String billing_zip, String exp_date) {
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

	public int getNextId() {
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

	public int passwordCheck(String uname, String psw) {
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
	public int passwordCheckEmp(int uname, String psw) {
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
	public String[] movieDetails(String movie_name) {
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
	public int searchMovie(String movie){ 
		int id=-1;
		String query = "select movie_id as id FROM cinema.movie WHERE movie_name='"+movie+"'";
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				id = rs.getInt("id");
				System.out.println(id);
				return id;
			}	
			return 200;

		} catch(Exception e) {
			System.out.println(e);
			id=100;
			return id;
		}
	}

	public int isShowing(int movie_id) {
		int isShowing = -1;
		String query = "select currently_showing as cs from cinema.movie WHERE movie_id='"+ movie_id + "'";
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				isShowing=rs.getInt("cs");
				System.out.println(isShowing);
			}
			if(isShowing==1) {
				return 1;
			}else{
				return 0;
			}
		} catch(Exception e) {
			System.out.println(e);
			return 100;
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