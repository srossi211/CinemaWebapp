<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<jsp:useBean id="movieBean" class="entityManagement.MovieBean" scope="session" ></jsp:useBean>

	<body>
		<h1>Management Page - Movies</h1>

		<table>
		<tr>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPage.jsp">Movies</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPageShowing.jsp">Showings</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPageEmployee.jsp">Employees</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPagePromo.jsp">Promos</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPageTicket.jsp">Tickets</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPageCustomer.jsp">Customer</a></b></td>
			<td style="border: 1px solid black; padding: 15px;"><b><a href="http://localhost:8080/cinema/managmentPageBooking.jsp">Bookings</a></b></td>
		</tr>
		</table>
		<br>
		<table style="border: 1px solid black">
		<!-- Addition Row -->
		<tr>
			<td style="border: 1px solid black;"><input type="text" name="movieId" placeholder="Movie ID" size="10" disabled></td>
			<td style="border: 1px solid black;"><input type="text" name="movieName" placeholder="Movie Name" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="currentlyShowing" placeholder="Showing? (Yes/No)" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="director" placeholder="Director" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="producer" placeholder="Producer" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="castList" placeholder="Cast List" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="picture" placeholder="Picture Link (IMDB)" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="trailer" placeholder="Trailer Link (youtube)" size="15"></td>
			<td style="border: 1px solid black;"><input type="text" name="rating" placeholder="Rating (Number of Stars 0-5)" size="22"></td>
			<td style="border: 1px solid black;"><input type="text" name="synopsis" placeholder="Synopsis" size="10"></td>
			<td style="border: 1px solid black;"><button type="submit" name="addMovieBtn">Add New</button></td>
		</tr>

		<%! String[][] movies = movieBean.getDatabseInfo(); %>
		<% for(int i= 0; i<movieBean.count(); i++)
			{ %>
		<tr>
			<td><%= movies[i][0]%></td>
			<td><%= movies[i][1]%></td>
			<td><%= movies[i][2]%></td>
			<td><%= movies[i][3]%></td>
			<td><%= movies[i][4]%></td>
			<td><%= movies[i][5]%></td>
			<td><%= movies[i][6]%></td>
			<td><%= movies[i][7]%></td>
			<td><%= movies[i][8]%></td>
			<td><%= movies[i][9]%></td>
			<td><jsp:element name="button">
				<jsp:attribute name="type">submit</jsp:attribute>
  				<jsp:attribute name="name">editBtn<%= i %></jsp:attribute>
  				<jsp:body>Update</jsp:body>
  				</jsp:element>
  				<jsp:element name="button">
				<jsp:attribute name="type">submit</jsp:attribute>
  				<jsp:attribute name="name">delBtn<%= i %></jsp:attribute>
  				<jsp:body>Delete</jsp:body>
				</jsp:element></td>
		</tr>
		<% } %>
		</table>
				
	</body>

</html>