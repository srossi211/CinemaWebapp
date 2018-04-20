<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>

<html>

	<title>Search Results</title>
		<center><h1>Search Results</h1></center>
	<body>
<%
	String currently_showing="";
	MysqlCon con = new MysqlCon();
	String movie=request.getParameter("movie");
	int movie_id = con.searchMovie(movie);
	try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cinema","root","root");
	
			String query = "currently_showing as cs from cinema.movie WHERE movie_id="+movie_id;
			
			Statement st = conn.createStatement();
			ResultSet rs;
			rs=st.executeQuery(query);
			if(rs.next()){
				currently_showing = rs.getString("cs");
			}

		 }catch(Exception e) {
			System.out.println(e);
		}


	
	
		if(currently_showing.equals("yes")){		
%>	
	
	<%= movie %>Is Now Showing!
	
	<%
		}
		%>
	</body>
</html>