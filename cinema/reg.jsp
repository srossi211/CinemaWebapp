<%-- This .jsp gathers data from the create account form and adds the new customer to the database  --%>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MysqlCon.*" %>

<html>
<head>
	<title>New User Registration</title>
</head>
	<jsp:useBean id="mBean" class="mail.MailBean" scope="session" >
	</jsp:useBean>
	
	<!-- Incoming request code -->
<body>
	<% 
	
	MysqlCon con = new MysqlCon();


	// get customer table data
	String email=request.getParameter("Email");
	int customer = con.getNextId();
	
	String fname=request.getParameter("firstName");
	String lname=request.getParameter("lastName");
	String password=request.getParameter("Password");
	String phoneNumber=request.getParameter("phoneNumber");
	String street_address=request.getParameter("street_address");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String zipcode=request.getParameter("zipcode");
	String has_promo=request.getParameter("register");
	String account="Yes";

	if(request.getParameter("cardNum").equals("")!=true) {
		//get payment table data
		String card_type=request.getParameter("cardType");
		String card_number=request.getParameter("cardNum");
		String sec_code=request.getParameter("securityCode");
		int security_code = Integer.parseInt(sec_code);
		String billing_zip =request.getParameter("billingZip");
		String expMonth=request.getParameter("expMonth");
		String expYear=request.getParameter("expYear");
		String exp_date= expMonth + "/" + expYear;
		int y = con.insertPayment(customer, card_type, card_number, security_code, billing_zip, exp_date);
	}
	int x = con.insertCustomer(customer, email, fname, lname, password, phoneNumber, street_address, city, state, zipcode, has_promo, account);

	if(request.getParameter("Email")!=null &&
		request.getParameter("firstName") != null &&
		request.getParameter("lastName") != null &&
		request.getParameter("Password") != null &&
		request.getParameter("submitBtn") !=null)
		%>
		<center><h2>Thank you for signing up!<br/> You will recieve a confirmation email at the email address you provided.</h2></center>
		<%
		{
			mBean.sendRegEmail(request.getParameter("Email"), request.getParameter("firstName"), request.getParameter("lastName"));

		}
	%>

	<form action="homepage.jsp">
		<div>
		<center><input type="submit" value="GET STARTED"/></center>
		</div>
	</form>

</body>
</html>
