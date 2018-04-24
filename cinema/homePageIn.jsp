<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>

<%
	String uname = request.getParameter("email");
	String psw = request.getParameter("psw");
	Account a = new Account(uname, psw);
%>

<html>
<style>
body{
	background-color: green;
}
</style>

	<title>The Coolest Movie Theatre</title>
		<center><h1>The Coolest Movie Theatre</h1></center>
	<body>
		<form action="findMovie.jsp">
			<div>
			<center><input type="text" name="movie" placeholder="Search a movie..."></center>
			</div><br>
			<div>
			<input type="hidden" name="uname" value="<%=uname%>">
			</div>
			<div>	
			<center><button><type="submit" name="submitBtn">Search</button></center>
			</div>
			</input>		
		</form>	

	<form action="homepage.jsp" method="post">
		<center><input type="submit" value="Logout"/></center>
	</form><br>
	</body>
</html>