# CinemaWebapp

-> The conf directory has the updated web.xml and context.xml files that enable the use of JDBC
t
-> Haven't uploaded the MysqlCon.java and MysqlCon.class files (DB access layer) becuase a few more methods need to be implemented. The .java file will go in a directory called "packages" inside the cinema directory, the .class file will go in the classes directory inside WEB-INF directory. 
-> Any .jsp or other file that needs to use the MysqlCon methods will need: 
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="MysqlCon.*>

-> reg.jsp finishes by redirecting to homePgeIn.html (may need to change it to .jsp to add functionality) which is identical what the main homepage will be, but without the buttons to login/sign up. (need to add signout button).

-> reg.jsp and future .jsp files will need to create objects of any entity class object it creates/needs to update/view which will be passed into the MysqlCon package methods. 
