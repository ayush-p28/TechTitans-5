package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;
import models.User;
@WebServlet("/verify.do")
public class VerifyServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        request.getRequestDispatcher("otpverify.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        String verify = request.getParameter("otp");
        String otp = String.valueOf(session.getAttribute("otp"));

        System.out.println(otp+"verifyServlet.java");
        System.out.println(verify+"verifyServlet.java");
        System.out.println(verify.equals(otp)+"verifyServlet.java");

        if(verify.equals(otp)){
            session.setAttribute("otpgot","true");
            User user = (User)session.getAttribute("newUser");
            user.setOtp(otp);
            session.setAttribute("newUser",user);
            System.out.println(user);
            boolean flag = user.addUser();
            System.out.println(flag);
            if(flag){
                response.sendRedirect("newpass.jsp");
            }else{
                response.sendRedirect("newaccount.jsp");
            }
        }else{
            response.sendRedirect("newaccount.jsp");
        }
    }
}