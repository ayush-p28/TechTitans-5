package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;
import models.*;
@WebServlet("/deletproductfast.do")
public class DeleteProductServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        HttpSession session = request.getSession();

        int id = Integer.valueOf(request.getParameter("pro_id"));

        System.out.println(id);
        
        Product prod = new Product(id);
        boolean flag = prod.deleteProduct(id);
        response.sendRedirect("product.jsp");
    }
}