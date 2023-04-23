package controllers;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.*;
import java.io.*;
import models.User;
@WebServlet("/logout.do")
public class Logout extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        session.invalidate();
        // response.sendRedirect("next.jsp?flag=true");
        response.sendRedirect("index.jsp");
    }
}