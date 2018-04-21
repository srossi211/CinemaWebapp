<%@ page language="java" %>
<html>

	<head>
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>

	<jsp:useBean id="promoBean" class="entityManagement.PromoBean" scope="session" ></jsp:useBean>

	<body>
		<h1>Management Page - Promo</h1>

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
			<td style="border: 1px solid black;"><input type="text" name="description" placeholder="Description" size="10" disabled></td>
			<td style="border: 1px solid black;"><input type="text" name="promoId" placeholder="Promo ID" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="amountAvaliable" placeholder="Amount Avaliable" size="13"></td>
			<td style="border: 1px solid black;"><input type="text" name="discount" placeholder="Discount" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="startDate" placeholder="Start Date" size="10"></td>
			<td style="border: 1px solid black;"><input type="text" name="endDate" placeholder="End Date" size="10"></td>
			<td style="border: 1px solid black;"><button type="submit" name="addPromoBtn">Add New</button></td>
		</tr>

		<%! String[][] promos = promoBean.getDatabseInfo(); %>
		<% for(int i= 0; i<promoBean.count(); i++)
			{ %>
		<tr>
			<td><%= promos[i][0]%></td>
			<td><%= promos[i][1]%></td>
			<td><%= promos[i][2]%></td>
			<td><%= promos[i][3]%></td>
			<td><%= promos[i][4]%></td>
			<td><%= promos[i][5]%></td>
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