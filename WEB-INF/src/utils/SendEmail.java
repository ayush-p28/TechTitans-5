package utils;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

public class SendEmail {
    public static boolean sendEmail(String toEmail, String subject, String msg) {
        boolean flag = false;
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", "smtp-mail.outlook.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session mailSession = Session.getInstance(props, new MailAuthenticator());

        MimeMessage message = new MimeMessage(mailSession);

        try {
            message.setFrom("Khilonaproj@outlook.com");
            message.setRecipients(Message.RecipientType.TO, toEmail);
            message.setSubject(subject);
            message.setContent(msg, "text/html");

            Transport.send(message);
            
            flag = true;
        } catch(MessagingException e) {
            e.printStackTrace();
        }
        return flag;
    }
}

class MailAuthenticator extends Authenticator {
    public PasswordAuthentication getPasswordAuthentication() {
        // return new PasswordAuthentication("sandeeprajakbus@outlook.com", "Sandeep@9981");
        return new PasswordAuthentication("Khilonaproj@outlook.com", "Khilona@99");
    }
}