<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<jsp:useBean id="employeeBean" class="entityManagement.EmployeeBean" scope="session" ></jsp:useBean>

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
			<td style="border: 1px solid black;"><input type="text" name="employeeId" placeholder="Employee ID" size="10" disabled></td>
			<td style="border: 1px solid black;"><input type="text" name="employeeType" placeholder="Employee Type" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="firstName" placeholder="First Name" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="lastName" placeholder="Last Name" size="10"></td>
			<td style="border: 1px solid black;"><button type="submit" name="addEmployeeBtn">Add New</button></td>
		</tr>

		<%! String[][] employees = employeeBean.getDatabseInfo(); %>
		<% for(int i= 0; i<employeeBean.count(); i++)
			{ %>
		<tr>
			<td><%= employees[i][0]%></td>
			<td><%= employees[i][1]%></td>
			<td><%= employees[i][2]%></td>
			<td><%= employees[i][3]%></td>
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