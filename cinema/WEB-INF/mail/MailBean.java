/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mail;

/**
 *
 * @author Sergio
 */

/*import org.mariadb.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList*/
import java.io.*;
import java.util.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class MailBean implements Serializable
{
	public MailBean()
	{
	}
	
	public void sendRegEmail(String toEmail, String fName, String lName)
	{
		//Email to send to
        String to = toEmail;
        //Email to be sent from
        String from = "mailServer8110245577@gmail.com";
		//Create properties object
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");
        //Get Session
        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(from, "JavaIsCool7");
            }
        });
		
		//Try/Catch to send message
        try
        {
            //Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);
            //Set from address in email
            message.setFrom(new InternetAddress(from));
            //Set to address in email
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            //Set the subject of the email
            message.setSubject("Cinema E-Booking Registration");
            //Set the actual message text
            message.setText("Dear "+fName+" "+lName+
			",\n\nThis email is to confirm that you have registered for the cinema e-booking system!");
            
            //Sending the message
            Transport.send(message);
            System.out.println("Message sent!");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("Something went wrong!");
        }
	}
}

