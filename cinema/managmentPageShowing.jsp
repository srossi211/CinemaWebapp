<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="styleManage.css">
	</head>

	<jsp:useBean id="dataBean" class="data.DataBean" scope="session" ></jsp:useBean>

	<%
	boolean allFields = (request.getParameter("movieId") != null &&
			request.getParameter("hallId") != null &&
			request.getParameter("numTickets") != null &&
			request.getParameter("date") != null &&
			request.getParameter("time") != null);

	String status = "X: ";
	//Add Button
	if(request.getParameter("addShowingBtn")!=null)
	{
		status += "Got into the add button: ";
		if(allFields)
		{
			status += dataBean.addShowing(request.getParameter("movieId"), request.getParameter("hallId"), request.getParameter("numTickets"), request.getParameter("date"), request.getParameter("time"));
		}			
	}

	String[][] showings = dataBean.getShowingInfo();

	//Update button
	for(int i =0; i<dataBean.showingCount(); i++)
	{
		if(request.getParameter("editBtn"+showings[i][0]) !=null)
		{
			status += "Got into update button "+showings[i][0]+": ";
			if(allFields)
			{
				status += dataBean.updateShowing(showings[i][0], request.getParameter("movieId"), request.getParameter("hallId"), request.getParameter("numTickets"), request.getParameter("date"), request.getParameter("time"));
			}
		}
	}

	//Delete button
	for(int i =0; i<dataBean.showingCount(); i++)
	{
		if(request.getParameter("delBtn"+showings[i][0]) !=null)
		{
			status += "Got into delete button "+showings[i][0]+": ";
			if(allFields)
			{
				status += dataBean.deleteShowing(showings[i][0]);
			}
		}
	}
	%>

	<body>
		<h1>Management Page - Showings</h1>

		<form action="http://localhost:8080/cinema/managmentPageShowing.jsp">
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
			<td style="border: 1px solid black;"><input type="text" name="showingId" placeholder="Showing ID" size="10" disabled></td>
			<td style="border: 1px solid black;"><input type="text" name="movieId" placeholder="Movie ID" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="hallId" placeholder="Hall ID" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="numTickets" placeholder="Number of Tickets" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="date" placeholder="Date" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="time" placeholder="Time" size="10"></td>
			<td style="border: 1px solid black;"><button type="submit" name="addShowingBtn">Add New</button></td>
		</tr>

		<% for(int i= 0; i<dataBean.showingCount(); i++)
			{ %>
		<tr>
			<td style="border: 1px solid black; padding: 15px;"><%= showings[i][0]%></td>
			<td style="border: 1px solid black; padding: 15px;"><%= showings[i][1]%></td>
			<td style="border: 1px solid black; padding: 15px;"><%= showings[i][2]%></td>
			<td style="border: 1px solid black; padding: 15px;"><%= showings[i][3]%></td>
			<td style="border: 1px solid black; padding: 15px;"><%= showings[i][4]%></td>
			<td style="border: 1px solid black; padding: 15px;"><%= showings[i][5]%></td>
			<td style="border: 1px solid black; padding: 15px;"><jsp:element name="button">
				<jsp:attribute name="type">submit</jsp:attribute>
  				<jsp:attribute name="name">editBtn<%= showings[i][0] %></jsp:attribute>
  				<jsp:body>Update</jsp:body>
  				</jsp:element>
  				<jsp:element name="button">
				<jsp:attribute name="type">submit</jsp:attribute>
  				<jsp:attribute name="name">delBtn<%= showings[i][0] %></jsp:attribute>
  				<jsp:body>Delete</jsp:body>
				</jsp:element></td>
		</tr>
		<% } %>
		</table>
	</form>

	<%= status %>
				
	</body>

</html>