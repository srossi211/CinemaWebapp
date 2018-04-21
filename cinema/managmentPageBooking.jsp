<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<jsp:useBean id="bookingBean" class="entityManagement.BookingBean" scope="session" ></jsp:useBean>

	<body>
		<h1>Management Page - Booking</h1>

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
			<td style="border: 1px solid black;"><input type="text" name="bookingId" placeholder="Booking ID" size="10" disabled></td>
			<td style="border: 1px solid black;"><input type="text" name="customerId" placeholder="Customer ID" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="date" placeholder="Date" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="numTickets" placeholder="Number of Tickets" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="totalPrice" placeholder="Total Price" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="movieId" placeholder="Movie ID" size="10"></td>
			<td style="border: 1px solid black;"><button type="submit" name="addBookingBtn">Add New</button></td>
		</tr>

		<%! String[][] bookings = bookingBean.getDatabseInfo(); %>
		<% for(int i= 0; i<bookingBean.count(); i++)
			{ %>
		<tr>
			<td><%= bookings[i][0]%></td>
			<td><%= bookings[i][1]%></td>
			<td><%= bookings[i][2]%></td>
			<td><%= bookings[i][3]%></td>
			<td><%= bookings[i][4]%></td>
			<td><%= bookings[i][5]%></td>
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