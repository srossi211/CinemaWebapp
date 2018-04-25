<html>
<head>
<style>
body{
	background-color: green;
}
</style>
</head>	

	<jsp:useBean id="dataBean" class="data.DataBean" scope="session" ></jsp:useBean>

	<title>The Coolest Movie Theatre</title>
		<center><h1>The Coolest Movie Theatre
			<div align="right">
		<form action="Login_FormManager.html" method="post">
			<input type="submit" value="Employee Login"/>
		</form></div></center>
		</h1>

	<body>
		
		<form action="Login_Form.html" method="post">
			<center><input type="submit" value="User Login"/></center>
		</form>
		<form action="createAcct.html" method="post">
			<center><input type="submit" value="Sign Up!"/></center>
		</form><br>
		<form action="findMovie.jsp" method="post">
			<center><input type="text" name="movie" placeholder="Search a movie..." />
				<button type="submit" name="submitbtn">Search!</button>
			</center>
		</form>	

		

		<center>
		<h2>Now Playing!</h2>
		<% String[][] movies = dataBean.getMovieInfo(); 
		String[] titles = new String[3]; 
		titles[0] = movies[0][1];
		titles[1] = movies[1][1];
		titles[2] = movies[2][1];
		String[] images = new String[3];
		images[0] = movies[0][6];
		images[1] = movies[1][6];
		images[2] = movies[2][6];%>
		<table><tr>
			<td style="padding: 15px;">
			<jsp:element name="img">
			<jsp:attribute name="src"><%= images[0]%></jsp:attribute>
			<jsp:attribute name="alt"><%= titles[0] %></jsp:attribute>
			<jsp:attribute name="height">255</jsp:attribute>
			<jsp:attribute name="width">200</jsp:attribute>
			</jsp:element>
		</td>
		<td style="padding: 15px;">
			<jsp:element name="img">
			<jsp:attribute name="src"><%= images[1]%></jsp:attribute>
			<jsp:attribute name="alt"><%= titles[1] %></jsp:attribute>
			<jsp:attribute name="height">255</jsp:attribute>
			<jsp:attribute name="width">200</jsp:attribute>
			</jsp:element>
		</td>
		<td style="padding: 15px;">
			<jsp:element name="img">
			<jsp:attribute name="src"><%= images[2]%></jsp:attribute>
			<jsp:attribute name="alt"><%= titles[2] %></jsp:attribute>
			<jsp:attribute name="height">255</jsp:attribute>
			<jsp:attribute name="width">200</jsp:attribute>
			</jsp:element>
		</td>
		<tr>
			<td><center><h3><%= titles[0]%></h3></center></td>
			<td><center><h3><%= titles[1]%></h3></center></td>
			<td><center><h3><%= titles[2]%></h3></center></td>
		</tr>
		</tr></table></center>

	</body>
</html>