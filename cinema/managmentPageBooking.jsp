<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="styleManage.css">
	</head>

	<jsp:useBean id="dataBean" class="data.DataBean" scope="session" ></jsp:useBean>

	<%
	boolean allFields = (request.getParameter("customerId") != null &&
			request.getParameter("date") != null &&
			request.getParameter("numTickets") != null &&
			request.getParameter("totalPrice") != null &&
			request.getParameter("movieId") != null);

	String status = "X: ";
	//Add Button
	if(request.getParameter("addBookingBtn")!=null)
	{
		status += "Got into the add button: ";
		if(allFields)
		{
			status += dataBean.addBooking(request.getParameter("customerId"), request.getParameter("date"), request.getParameter("numTickets"), request.getParameter("totalPrice"), request.getParameter("movieId"));
		}			
	}

	String[][] bookings = dataBean.getBookingInfo();

	//Update button
	for(int i =0; i<dataBean.bookingCount(); i++)
	{
		if(request.getParameter("editBtn"+bookings[i][0]) !=null)
		{
			status += "Got into update button "+bookings[i][0]+": ";
			if(allFields)
			{
				status += dataBean.updateBooking(bookings[i][0], request.getParameter("customerId"), request.getParameter("date"), request.getParameter("numTickets"), request.getParameter("totalPrice"), request.getParameter("movieId"));
			}
		}
	}

	//Delete button
	for(int i =0; i<dataBean.bookingCount(); i++)
	{
		if(request.getParameter("delBtn"+bookings[i][0]) !=null)
		{
			status += "Got into delete button "+bookings[i][0]+": ";
			if(allFields)
			{
				status += dataBean.deleteBooking(bookings[i][0]);
			}
		}
	}
	%>

	<body>
		<h1>Management Page - Booking</h1>
		<form action = "http://localhost:8080/cinema/managmentPageBooking.jsp">
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

		<% for(int i= 0; i<dataBean.bookingCount(); i++)
			{ %>
		<tr>
			<td style="border: 1px solid black;"><%= bookings[i][0]%></td>
			<td style="border: 1px solid black;"><%= bookings[i][1]%></td>
			<td style="border: 1px solid black;"><%= bookings[i][2]%></td>
			<td style="border: 1px solid black;"><%= bookings[i][3]%></td>
			<td style="border: 1px solid black;"><%= bookings[i][4]%></td>
			<td style="border: 1px solid black;"><%= bookings[i][5]%></td>
			<td style="border: 1px solid black;"><jsp:element name="button">
				<jsp:attribute name="type">submit</jsp:attribute>
  				<jsp:attribute name="name">editBtn<%= bookings[i][0] %></jsp:attribute>
  				<jsp:body>Update</jsp:body>
  				</jsp:element>
  				<jsp:element name="button">
				<jsp:attribute name="type">submit</jsp:attribute>
  				<jsp:attribute name="name">delBtn<%= bookings[i][0] %></jsp:attribute>
  				<jsp:body>Delete</jsp:body>
				</jsp:element></td>
		</tr>
		<% } %>
		</table>
	</form>

	<%= status %>
	</body>

</html>