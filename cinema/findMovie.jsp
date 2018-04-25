<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>


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

h2 {
	margin-left:570px;
}

text {
	margin-left:620px;
}

button {
	display:inline-block;
	vertical-align:middle;
	margin:10px 0;
}
</style>
	<title><%=movie%></title>
		<center><h1><%=movie%></h1></center>
	<body>
	
	<center><h1><%=movie%> Is Now Showing!
	
	</h1></center>
	<div class="container">
	<h2> <%=movie%> has 4 different show times.</h2>
	<ul>
		 <text>1:00pm </text>
		<form action = "seats.jsp">
	<button><type="submit" name="seats">Find A Seat</button>
	</form>
		 <br>
		 <text>3:45pm </text>
		 <form action = "seats.jsp">
	<button><type="submit" name="seats">Find A Seat</button>
	</form>
		 <br>
		 <text>6:30pm </text>
		 <form action = "seats.jsp">
	<button><type="submit" name="seats">Find A Seat</button>
	</form>
		 <br>
		 <text>9:15pm </text>
		 <form action = "seats.jsp">
	<button><type="submit" name="seats">Find A Seat</button>
	</form>
	</ul>
	</body>
</html>