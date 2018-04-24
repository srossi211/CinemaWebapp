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
		}
		return 0;
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
		String query = "select email, password from cinema.customer;";
		String email="";
		String pass="";
		try{
			Connection con = MysqlCon.connect();
			Statement st = con.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				email = rs.getString("email");
				pass = rs.getString("password");
			}
			if((email.equals(uname) == true) && (pass.equals(psw) == true)) {
				return 1;
			}
			else {
				return 0;
			}	
		} catch(Exception e) {
			System.out.println(e);
			return 0;
		}
	}
		public int passwordCheckEmp(int uname, String psw) {
		String query = "select employee_id as e, password as p from cinema.employees";
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
			}
			if((pass.equals(psw) == true) && (id == uname)) {
				return 1;
			}
			else {
				return 0;
			}	
		} catch(Exception e) {
			System.out.println(e);
			return 0;
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