package controllers;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import utils.SendEmail;
import javax.servlet.*;
import models.User;
import utils.Otp;
import java.io.*;
@WebServlet("/createnewaccount.do")
public class CreateNewAccount extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.sendRedirect("CreateNewAccount.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        System.out.println(name);
        System.out.println(email);
        System.out.println(contact);

        String otp = String.valueOf(Otp.otpGenerator());
        session.setAttribute("otp",otp);
        User newUser = new User();
        newUser.setName(name);
        newUser.setEmail(email);
        newUser.setContact(contact);
        session.setAttribute("newUser",newUser);
        if(SendEmail.sendEmail(email,"Welcome to Khilona.in your OTP is",otp)){
            session.setAttribute("email",email);
            response.sendRedirect("otpverify.jsp");
        }else{
            System.out.println("otp not sent createnewaccount.java");
        }
    }
}