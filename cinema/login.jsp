<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>

<html>
<head>
	<title>Login Attempt</title>
</head>
<body>
	<%
	MysqlCon con = new MysqlCon();
	String uname = request.getParameter("uname");
	String psw = request.getParameter("psw");
	int i = con.passwordCheck(uname, psw);

	if(i == 1)
	{
	%>	
	<center><h2>Login Successful!</h2></center><br>
	<form action="homePageIn.html">
		<div>
			<center><input type="submit" value="Go To Home Page!"/></center>
		</div>
	</form>
	<%
	}else{ 
	%>
		<center><h2>Login Failed! Incorrect Credentials.</h2></center><br>
		<form action="Login_Form.html">
			<div>
				<center><input type="submit" value="Try Again"/></center>
			</div>
		</form>
	<%
	}
	%>
</body>	
</html>