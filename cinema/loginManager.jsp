<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>

<html>
<head>
	<title>Employee Login Attempt</title>
</head>
<body>
	<%
	MysqlCon con = new MysqlCon();
	String id = request.getParameter("uname");
	String pass = request.getParameter("psw");
	int uname = Integer.parseInt(id);
	int i = con.passwordCheckEmp(uname, pass);

	if(i == 1)
	{
	%>	
	<center><h2>Login Successful!</h2></center><br>
	<form action="http://localhost:8080/cinema/homePageManager.jsp">
		<div>
			<center><input type="submit" value="Home Page"/></center>
		</div>
	</form>
	<%
	}else{ 
	%>
		<center><h2>Login Failed! Incorrect Credentials.</h2></center><br>
		<form action="http://localhost:8080/cinema/Login_FormManager.html">
			<div>
				<center><input type="submit" value="Try Again"/></center>
			</div>
		</form>
	<%
	}
	%>
</body>	
</html>
