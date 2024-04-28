package com.dietme.utill;

import com.dietme.admin.Admin;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

    public String getRandom() {
        Random rdm = new Random();
        int number = rdm.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendEmail(Admin admin) {
        boolean test = false;
        String toEmail = admin.getEmail();
        String fromEmail = "your-email@example.com"; // Set your email here
        String password = "your-email-password"; // Set your email password here

        try {
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.mail.com"); // Change to your SMTP server
            pr.setProperty("mail.smtp.port", "587");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");
            
            // Create session with authenticator
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            // Create message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("Subject of the Email");
            message.setText("Body of the Email");

            // Send message
            Transport.send(message);
            test = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return test;
    }
}
