### Updates Still in progress ### 

#####TODO###### 
(make note of methods you need to be implemented here)
-> 
#####TODO######

This package contains the methods used to access, update, and pull from the DB. This package is only available to .jsp pages and is
imported like so: 

<%@ page import="MysqlCon.*" %>

To use the methods in the package you must first create a MysqlCon object:

MysqlCon con = new MysqlCon();

-> login.jsp & reg.jsp are good examples of how to use the package. 

-> Unfortunately, entity class objects are NOT able to be passed to MysqlCon methods. Entity class objects are created and used on a page(.jsp)
by page basis. 

-> !!!!!!! If someone finds out how to import our entity class packages into the MysqlCon.java file (or vice versa) please make it known!!!!!!!! 

######## MysqlCon method list ################
------------------------------------------------------------------------------------------------------------------------
public static Connection connect();

DESC: Establishes a connection to the database and returns a Connection object. Mainly used in other MysqlCon methods.
------------------------------------------------------------------------------------------------------------------------
public int insertCustomer(int customer, String email, String fname, String lname, String password, String phoneNumber, String street_address, String city, String state, String zipcode, String has_promo, String account) {

DESC: inserts a new customer into the customer table. Used in reg.jsp. Returns 0 on error.
------------------------------------------------------------------------------------------------------------------------
public int insertPayment(int customer, String card_type, String card_number, int security_code, String billing_zip, String exp_date) {

DESC: inserts payment data into DB for the customer with customer_id=customer [the first parameter]. Returns 0 on error.
------------------------------------------------------------------------------------------------------------------------
public int getNextId() {

DESC: returns the next available customer ID. Used in reg.jsp BEFORE calling insertCustomer. 
------------------------------------------------------------------------------------------------------------------------
public int passwordCheck(String uname, String psw)

DESC: Used in login.jsp (login processing page for customers) to check login credentials. Returns 1 on success, 0 or 100 on failure.
  -> String uname in this case is the users email address
------------------------------------------------------------------------------------------------------------------------
public int passwordCheckEmp(int uname, String psw) 

DESC: Used in loginManager.jsp(login processing page for Managers) to check credentials. Returns 1 on success, 0 or 100 on failure.
------------------------------------------------------------------------------------------------------------------------
public String[] movieDetails(String movie_name) *********** needs fixing **********

DESC: gets movie details for movie with movie_name equal to movie_name. 
------------------------------------------------------------------------------------------------------------------------
public int searchMovie(String movie)

DESC: returns the movie_id for a movie. 
------------------------------------------------------------------------------------------------------------------------



