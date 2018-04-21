<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<jsp:useBean id="customerBean" class="entityManagement.CustomerBean" scope="session" ></jsp:useBean>

	<body>
		<h1>Management Page - Customers</h1>

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
			<td style="border: 1px solid black;"><input type="text" name="customerId" placeholder="Customer ID" size="10" disabled></td>
			<td style="border: 1px solid black;"><input type="text" name="email" placeholder="E-Mail" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="firstName" placeholder="First Name" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="lastName" placeholder="Last Name" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="password" placeholder="Password" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="phoneNumber" placeholder="Phone Number" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="address" placeholder="Strees Address" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="city" placeholder="City" size="15"></td>
			<td style="border: 1px solid black;"><input type="text" name="state" placeholder="State" size="22"></td>
			<td style="border: 1px solid black;"><input type="text" name="zipCode" placeholder="Zip Code" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="account" placeholder="Account? (Yes/No)" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="hasPromo" placeholder="Promo? (Yes/No)" size="10"></td>
			<td style="border: 1px solid black;"><button type="submit" name="addUsersBtn">Add New</button></td>
		</tr>

		<%! String[][] customers = customerBean.getDatabseInfo(); %>
		<% for(int i= 0; i<customerBean.count(); i++)
			{ %>
		<tr>
			<td><%= customers[i][0]%></td>
			<td><%= customers[i][1]%></td>
			<td><%= customers[i][2]%></td>
			<td><%= customers[i][3]%></td>
			<td><%= customers[i][4]%></td>
			<td><%= customers[i][5]%></td>
			<td><%= customers[i][6]%></td>
			<td><%= customers[i][7]%></td>
			<td><%= customers[i][8]%></td>
			<td><%= customers[i][9]%></td>
			<td><%= customers[i][10]%></td>
			<td><%= customers[i][11]%></td>
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