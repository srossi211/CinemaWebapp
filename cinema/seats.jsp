<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>
<%@ page import="Movie.*"%>





<html>

	<head>
	
		<title> Cinema E-Booking System Seats </title>
	</head>
	
<body>

	<h1> Choose a seat: </h1>
	<br>
	
	<img src="seat chart.jpg" alt="Seat Chart" usemap="seatChart">
	
	<map name="seatChart">
		<area shape="rect" coords="14,4,53,34" alt="1" href="payment.jsp?data=Seat1">
		<area shape="rect" coords="54,4,91,34" alt="2" href="payment.jsp?data=Seat2">
		<area shape="rect" coords="92,4,130,34" alt="3" href="payment.jsp?data=Seat3">
		<area shape="rect" coords="131,4,170,34" alt="4" href="payment.jsp?data=Seat4">
		<area shape="rect" coords="171,4,209,34" alt="5" href="payment.jsp?data=Seat5">
		<area shape="rect" coords="14,35,53,65" alt="6" href="payment.jsp?data=Seat6">
		<area shape="rect" coords="54,35,91,65" alt="7" href="payment.jsp?data=Seat7">
		<area shape="rect" coords="92,35,130,65" alt="8" href="payment.jsp?data=Seat8">
		<area shape="rect" coords="131,35,170,65" alt="9" href="payment.jsp?data=Seat9">
		<area shape="rect" coords="171,35,209,65" alt="10" href="payment.jsp?data=Seat10">
		<area shape="rect" coords="14,66,53,96" alt="11" href="payment.jsp?data=Seat11">
		<area shape="rect" coords="54,66,91,96" alt="12" href="payment.jsp?data=Seat12">
		<area shape="rect" coords="92,66,130,96" alt="13" href="payment.jsp?data=Seat13">
		<area shape="rect" coords="131,66,170,96" alt="14" href="payment.jsp?data=Seat14">
		<area shape="rect" coords="171,66,209,96" alt="15" href="payment.jsp?data=Seat15">
		<area shape="rect" coords="14,97,53,127" alt="16" href="payment.jsp?data=Seat16">
		<area shape="rect" coords="54,97,91,127" alt="17" href="payment.jsp?data=Seat17">
		<area shape="rect" coords="92,97,130,127" alt="18" href="payment.jsp?data=Seat18">
		<area shape="rect" coords="131,97,170,127" alt="19" href="payment.jsp?data=Seat19">
		<area shape="rect" coords="171,97,209,127" alt="20" href="payment.jsp?data=Seat20">
		<area shape="rect" coords="14,128,53,158" alt="21" href="payment.jsp?data=Seat21">
		<area shape="rect" coords="54,128,91,158" alt="22" href="payment.jsp?data=Seat22">
		<area shape="rect" coords="92,128,130,158" alt="23" href="payment.jsp?data=Seat23">
		<area shape="rect" coords="131,128,170,158" alt="24" href="payment.jsp?data=Seat24">
		<area shape="rect" coords="171,128,209,158" alt="25" href="payment.jsp?data=Seat25">
		<area shape="rect" coords="14,159,53,189" alt="26" href="payment.jsp?data=Seat26">
		<area shape="rect" coords="54,159,91,189" alt="27" href="payment.jsp?data=Seat27">
		<area shape="rect" coords="92,159,130,189" alt="28" href="payment.jsp?data=Seat28">
		<area shape="rect" coords="131,159,170,189" alt="29" href="payment.jsp?data=Seat29">
		<area shape="rect" coords="171,159,209,189" alt="30" href="payment.jsp?data=Seat30">
		<area shape="rect" coords="14,190,53,220" alt="31" href="payment.jsp?data=Seat31">
		<area shape="rect" coords="54,190,91,220" alt="32" href="payment.jsp?data=Seat32">
		<area shape="rect" coords="92,190,130,220" alt="33" href="payment.jsp?data=Seat33">
		<area shape="rect" coords="131,190,170,220" alt="34" href="payment.jsp?data=Seat34">
		<area shape="rect" coords="171,190,209,220" alt="35" href="payment.jsp?data=Seat35">
		<area shape="rect" coords="14,221,53,251" alt="36" href="payment.jsp?data=Seat36">
		<area shape="rect" coords="54,221,91,251" alt="37" href="payment.jsp?data=Seat37">
		<area shape="rect" coords="92,221,130,251" alt="38" href="payment.jsp?data=Seat38">
		<area shape="rect" coords="131,221,170,251" alt="39" href="payment.jsp?data=Seat39">
		<area shape="rect" coords="171,221,209,251" alt="40" href="payment.jsp?data=Seat40">
		<area shape="rect" coords="14,252,53,282" alt="41" href="payment.jsp?data=Seat41">
		<area shape="rect" coords="54,252,91,282" alt="42" href="payment.jsp?data=Seat42">
		<area shape="rect" coords="92,252,130,282" alt="43" href="payment.jsp?data=Seat43">
		<area shape="rect" coords="131,252,170,282" alt="44" href="payment.jsp?data=Seat44">
		<area shape="rect" coords="171,252,209,282" alt="45" href="payment.jsp?data=Seat45">
		<area shape="rect" coords="14,283,53,313" alt="46" href="payment.jsp?data=Seat46">
		<area shape="rect" coords="54,283,91,313" alt="47" href="payment.jsp?data=Seat47">
		<area shape="rect" coords="92,283,130,313" alt="48" href="payment.jsp?data=Seat48">
		<area shape="rect" coords="131,283,170,313" alt="49" href="payment.jsp?data=Seat49">
		<area shape="rect" coords="171,283,209,313" alt="50" href="payment.jsp?data=Seat50">
		
	</map>
	
</body>