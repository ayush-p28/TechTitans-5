package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;
import models.User;
@WebServlet("/createpassword.do")
public class CreatePassword extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        request.getRequestDispatcher("createpassword.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        String password = request.getParameter("password");System.out.println(password+" createpassword.java___");
        String email = String.valueOf(session.getAttribute("email"));
        User user = new User();
        boolean flag = user.addPassword(password,email);
        if(flag){
            response.sendRedirect("login.jsp");
        }
        
    }
}