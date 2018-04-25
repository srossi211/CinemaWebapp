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


	<jsp:useBean id="dataBean" class="data.DataBean" scope="session" ></jsp:useBean>

	<%
	String uname = request.getParameter("uname");
	String movie = request.getParameter("movie");
	MysqlCon con = new MysqlCon();
	int movie_id = con.searchMovie(movie);
	int currently_showing=con.isShowing(movie_id);

	String[][] curShowings = dataBean.getShowtimesFor(String.valueOf(movie_id));
	//String[][] curShowings = dataBean.getShowingInfo();
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
	
	<%--= String.valueOf(movie_id)--%>

	<center><h1><%=movie%> Is Now Showing!
	
	</h1></center>
	<div class="container">
	<h2> <%=movie%> has <%= curShowings.length %> different show times.</h2>
	<ul>
		<% for(int i=0; i<curShowings.length; i++)
		{ %>
		 <text><%= curShowings[i][4]%> <%= curShowings[i][5]%></text>
		<form action = "seats.jsp">
	<button><type="submit" name="seats">Find A Seat</button>
	</form>
		 <br>
		 <% }%>
	</ul>
	</body>
</html>