<%@ page language="java" %>
<html>
	<head>
	
		<title> Cinema E-Booking System </title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	
	<jsp:useBean id="mBean" class="mail.MailBean" scope="session" >
	</jsp:useBean>
	
	<!-- Incoming request code -->
	<% 
	if(request.getParameter("Email")!=null &&
		request.getParameter("firstName") != null &&
		request.getParameter("lastName") != null &&
		request.getParameter("Password") != null &&
		request.getParameter("submitBtn") !=null)
		{
			mBean.sendRegEmail(request.getParameter("Email"), request.getParameter("firstName"), request.getParameter("lastName"));
		}
	%>

	<body>
		<h1> Create an Account! </h1>
		<form action="http://localhost:8080/cinema/page.jsp">
			<div>
				<label> * Email:</label>
					<input type="text" name="Email" required><br>
			</div>
			<br>
			<div>
				<label> * First Name:</label>
					<input type="text" name="firstName" required><br>
			</div>
			<br>
			<div>
				<label> * Last Name:</label>
					<input type="text" name="lastName" required><br>
			</div>
			<br>
			<div>
				<label> * Password:</label>
					<input type="password" name="Password" required><br>
			</div>
			<br>
			<div>
				<label> Phone Number:</label>
					<input type="text" name="phoneNumber" maxlength="10"><br>
			</div>
			<br>
			<div>
				<label> Home Address:</label>
					<input type="text" name="address" placeholder="Street Address"><br>
			</div>
			<br>
			<div>
				<input type="text" name="address" placeholder="City"><br>
			</div>
			<br>
			<div>
				<input type="text" name="address" placeholder="State"><br>
			</div>
			<br>
			<div>
				<input type="text" name="address" placeholder="Zip Code" maxlength="5"><br>
			</div>
			<br>
			<div>
				<label> Payment Info:</label>
					<input type="text" name="paymentInfo" placeholder="Card Number"><br>
			</div>
			<br>
			<div>
				<input type="text" name="paymentInfo" placeholder="Security Code"><br>
			</div>
			<br>
			<div>
				<select>
					<option value="01">January</option>
					<option value="02">February</option>
					<option value="03">March</option>
					<option value="04">April</option>
					<option value="05">May</option>
					<option value="06">June</option>
					<option value="07">July</option>
					<option value="08">August</option>
					<option value="09">September</option>
					<option value="10">October</option>
					<option value="11">November</option>
					<option value="12">December</option>
				</select>
				<select>
					<option value="01">2018</option>
					<option value="02">2019</option>
					<option value="03">2020</option>
					<option value="04">2021</option>
					<option value="05">2022</option>
					<option value="06">2023</option>
					<option value="07">2024</option>
					<option value="08">2025</option>
					<option value="09">2026</option>
					<option value="10">2027</option>
					<option value="11">2028</option>
					<option value="12">2029</option>
					<option value="13">2030</option>
				</select>
			</div>
			<br>
			<div>
				<h3> Would you like to sign up to have our promotion offers emailed to you?</h3>
				<input type="radio" name="register" value="Yes">
					Yes<br>
				<input type="radio" name="register" value="No">
					No<br>
			</div>
			<br>
			<div>
				
				<button type="submit" name="submitBtn">Submit</button>
				<br>
				<button type="submit" name="resetBtn">Reset</button>
				</form>
			</div>
		</form>
	</body>
</html>
