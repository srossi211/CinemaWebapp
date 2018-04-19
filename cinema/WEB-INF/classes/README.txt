This directiory holds all the .class files of the compiled custom .java files (packages) 
All .class files for a particular custom package must be put inside a directory. You must import these packages to use their functions in any new .jsp file. 
-------------------------------------------------------------------------------------------------------
EXAMPLE: 
<%@ page import="MysqlCon.*" %>

-----> This imports all the functions from the custom MysqlCom package

to use the functions, you must declare an object for that class. 
EX: MysqlCon con = MysqlCon();

Now you can use con to call methods in the MysqlCon package like: int x = con.insertCustomer(.... parameters ....);

###NOTE this package is not yet completed, more methods will be added for various db access needs.
---------------------------------------------------------------------------------------------------------


-> for simplicity, if you create a new package make a readme for that package containing all the names of the methods and what they do. This will make it easier to understand since we can't discuss them in person. 
