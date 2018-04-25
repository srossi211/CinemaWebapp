<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="MysqlCon.*" %>
<%@ page import="entity.*" %>
<%@ page import="Movie.*"%>

<html>
<head>
    <meta charset="utf-8">
    <title> Cinema E-Booking System </title>
    <link rel="stylesheet" href="payment-style.css">
    <link rel=stylesheet href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
</head>
    <body>
	
	<%
    if (request.getParameter("data") == null) {
        out.println("Please enter your name.");
    } else {
        out.println("Hello <b>"+request. getParameter("data")+"</b>!");
    }
%>
        
    <div class="billing">
        <div class="column">
            <div class="container">
                <div class="cart">
                    <div class="container">
                        <h3>Shopping Cart <span class="price"><i class="fa fa-shopping-cart"></i> 2</span></h3>
                        <p>Movie ticket info <span class="price">$8</span></p>
                        <p>Movie ticket info <span class="price">$8</span></p>
                        <hr>
                        <p>Total: <span class="price"><b>$20</b></span></p>
                    </div>
                </div>
                <form action="action_page.php">
                    <hr>
                    <div class="billing">
                     <div class="col">
                        <h3>Billing Address</h3>
            
                         <label for="fname"><i class="fa fa-user">Full Name</i></label>
                         <input type="text" id="fname" name="firstname" placeholder="John Smith">
                         <label for="email"><i class="fa fa-envelope">Email</i></label>
                         <input type="text" id="email" name="email" placeholder="john@example.com">
                         <label for="addr"><i class="fa fa-address-card-o"></i>Address</label>
                         <input type="text" id="addr" name="address" placeholder="123 Jackson Street">
                         <label for="city"><i class="fa fa-institution"></i>City</label>
                         <input type="text" id="city" name="city" placeholder="Athens">
                
                         <div class="billing">
                             <div class="col">
                                 <label for="state">State</label>
                                 <input type="text" id="state" name="state" placeholder="GA">
                             </div>
                             <div class="col">
                                 <label for="zip">Zip</label>
                                 <input type="text" id="zip" name="zip" placeholder="30606">
                             </div>
                         </div>
                        </div>
                        <hr>
                         <div class="col">
                            <h3>Payment</h3>
                            <label for="fname">Accepted Cards</label>
                            <div class="icon-holder">
                                <i class="fa fa-cc-visa" style="color:navy;"></i>
                                <i class="fa fa-cc-amex" style="color:lightblue;"></i>
                                <i class="fa fa-cc-mastercard" style="color:black;"></i>
                                <i class="fa fa-cc-discover" style="color:gray;"></i>
                            </div>
                            <label for="cname">Name on credit card:</label>
                            <input type="text" id="cname" name="cardname" placeholder="John Smith">
                            <label for="ccnum">Credit card number:</label>
                            <input type="text" id="ccnum" name="cardnumber" placeholder="1234-1234-1234-1234">
                            <label for="expmonth">Exp Month:</label>
                            <input type="text" id="expmonth" name="expmonth" placeholder="October">
                            <div class="billing">
                                <div class="col">
                                    <label for="expyear">Exp Year:</label>
                                    <input type="text" id="expyear" name="expyear" placeholder="2018">
                                </div> 
                                <div class="col">
                                    <label for="cvv">CVV:</label>
                                    <input type="text" id="cvv" name="cvv" placeholder="123">
                                </div>
                            </div> 
                         </div>
                        
                    </div>
                     <label>
                        <input type="checkbox" checked="checked" name="sameaddr"> Shipping address is same as billing 
                     </label>
                     <input type="submit" value="Checkout" class="btn">
                 </form>
              </div>
            </div>
        </div>
</body>
</html>