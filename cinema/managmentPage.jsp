<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<!-- <jsp:useBean id="movieBean" class="entityManagement.MovieBean" scope="session" ></jsp:useBean> -->

	<body>
		<h1>Management Page - Movies</h1>

		<table>
		<tr>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Movies THING##">Movies</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Showings THING##">Showings</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Employees THING##">Employees</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Users THING##">Users</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Promos THING##">Promos</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Tickets THING##">Tickets</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Customer THING##">Customer</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="###LINK FOR Bookings THING##">Bookings</a></b></td>
		</tr>
		</table>
		<br>
		<table style="border: 1px solid black">
		<!-- Addition Row -->
		<tr>
			<td><input type="text" name="movieId" placeholder="Movie ID" size="10" disabled></td>
			<td><input type="text" name="movieName" placeholder="Movie Name" size="10"></td>
			<td><input type="text" name="currentlyShowing" placeholder="Shwoing? (Yes/No)" size="13"></td>
			<td><input type="text" name="director" placeholder="Director" size="10"></td>
			<td><input type="text" name="producer" placeholder="Producer" size="10"></td>
			<td><input type="text" name="castList" placeholder="Cast List" size="10"></td>
			<td><input type="text" name="picture" placeholder="Picture Link (IMDB)" size="13"></td>
			<td><input type="text" name="trailer" placeholder="Trailer Link (youtube)" size="15"></td>
			<td><input type="text" name="rating" placeholder="Rating (Number of Stars 0-5)" size="22"></td>
			<td><input type="text" name="synopsis" placeholder="Synopsis" size="10"></td>
			<td><button type="submit" name="addMovieBtn">Add New</button></td>
		</tr>
		<!-- <%! String[][] movies = movieBean.getDatabseInfo(); %>
		<% for(int i= 0; i<movieBean.count(); i++)
			{ %>
		<tr>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><%= movies[i][@]%></td>
			<td><jsp:text><![CDATA[<button name="editButton]]></jsp:text><c:out>i</c:out>jsp:text><![CDATA[">]]>
    			Update
				<jsp:text><![CDATA[</button>]]></jsp:text>
				<jsp:text><![CDATA[<button name="delButton]]></jsp:text><c:out>i</c:out>jsp:text><![CDATA[">]]>
    			Delete
				<jsp:text><![CDATA[</button>]]></jsp:text></td>
		</tr>
		<% } %>
		</table> -->

		<%! int i=1;%>
		<jsp:text><![CDATA[<button name="editButton]]></jsp:text><c:out>i</c:out>jsp:text><![CDATA[">]]>
    			Update
				<jsp:text><![CDATA[</button>]]></jsp:text>
				<jsp:text><![CDATA[<button name="delButton]]></jsp:text><c:out>i</c:out>jsp:text><![CDATA[">]]>
    			Delete
				<jsp:text><![CDATA[</button>]]></jsp:text>
				
	</body>

</html>