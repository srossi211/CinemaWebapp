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
			Statement st = con.createStatement();
			//ResultSet rs = st.executeQuery("select nvl(max(customer_id, 0) customer_id from cinema.customer");
			//if(rs.next()){
			//	max = rs.getInt("customer_id");
			//}
			max=max+1;
			return max;
		}catch(Exception e) {
			System.out.println(e);
			return -100;
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