<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>

	<%
	String uname = request.getParameter("uname");
	String movie = request.getParameter("movie");
	MysqlCon con = new MysqlCon();
	int movie_id = con.searchMovie(movie);
	int currently_showing=con.isShowing(movie_id);
	%>

<html>
<style>
body{
	background-color: green;
}
</style>
	<title>Search Results</title>
		<center><h1>Search Results</h1></center>
	<body>
	<%
		
	%>	
	
	<center><h2><%=movie%> Is Now Showing!
		
	<form action = "showtimes.jsp">
			<center><button><type="submit" name="showtimes">Find A Showtime</button></center>
	</form>
	</h2></center>
	<%
	//}
	%>
	</body>
</html>