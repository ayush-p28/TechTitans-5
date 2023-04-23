package controllers;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.*;
import java.io.*;
import models.User;
@WebServlet("/login.do")
public class loginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.sendRedirect("login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(email,password);
        if(user.loginUser(email,password)){
            if(email.equals("sandeeprajakjbp2002@gmail.com")){
                System.out.println("true-loginServlet.java");
                user.setSeller("1");
                session.setAttribute("FinalyNewUser",user);
                session.setAttribute("email",email);
                response.sendRedirect("next.jsp?seller=1");
            }else{
                System.out.println("true-loginServlet.java");
                session.setAttribute("FinalyNewUser",user);
                session.setAttribute("email",email);
                response.sendRedirect("index.jsp");
            }
        }else{
            response.sendRedirect("newaccount.jsp");
        }
    }
}