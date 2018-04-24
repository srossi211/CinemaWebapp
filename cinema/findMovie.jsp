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
	
	<center><h2><%=movie%> Is Now Showing!</h2>

	<form action = "showtimes.jsp">
		<div>
		<LABEL>Select a showtime:</LABEL>
			<select name="showtimes">
				<option value="<%=movie_id%>">TIME/DATE of showtime from db</option>
				<option value="<%=movie_id%>">TIME/DATE of showtime from db</option>
				<option value="<%=movie_id%>">TIME/DATE of showtime from db</option>
			</select>
		</div>		
	</form>
	</center>
	<%
	//}
	%>
	</body>
</html>