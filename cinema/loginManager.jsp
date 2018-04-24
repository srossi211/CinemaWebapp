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
	<form action="homePageManager.jsp">
		<div>
			<input type="hidden" name="employee_type" value="<%=uname%>">
		</div>
		<div>
			<input type="hidden" id="psw" name="password" value="<%=pass%>">
		</div>
		<div>	
			<center><input type="submit" value="Go To Home Page!"/></center></input>
		</div>
	</form>
	<%
	}else{ 
	%>
		<center><h2>Login Failed! Incorrect Credentials.</h2></center><br>
		<form action="Login_FormManager.html">
			<div>
				<center><input type="submit" value="Try Again"/></center>
			</div>
		</form>
	<%
	}
	%>
</body>	
</html>