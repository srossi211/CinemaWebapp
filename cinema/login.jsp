<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
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
	

	if(i==1)
	{
	%>	
	<center><h2>Login Successful!</h2></center><br>
	<form action="homePageIn.jsp">
		<div>
			<input type="hidden" name="email" value="<%=uname%>">
		</div>
		<div>
			<input type="hidden" id="psw" name="pass" value="<%=psw%>">
		</div>
		<div>	
			<center><input type="submit" value="Go To Home Page!"/></center></input>
		</div>
	</form>
	<%

	}else if(i==100){ 
	%>
		<center><h2>Login Failed! Incorrect Credentials.</h2></center><br>
		<form action="Login_Form.html">
			<div>
				<center><input type="submit" value="Try Again"/></center>
			</div>
		</form>
	<%
	} else {
		%>
		<h3><%=i%></h3>
		<%
	}

	%>
</body>	
</html>