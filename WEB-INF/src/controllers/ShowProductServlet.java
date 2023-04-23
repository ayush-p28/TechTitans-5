package controllers;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;
import models.*;
import com.google.gson.Gson;
@WebServlet("/showproduct.do")
public class ShowProductServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
        HttpSession session = request.getSession();
        String tag = request.getParameter("TAG");
        System.out.println("welcome to show product.do");
        ArrayList<Product> list = Product.showProducts();
        session.setAttribute("list",list);
        if(tag.equals("1")){
            Gson gson = new Gson();
            String records = gson.toJson(list);
            System.out.println(records);
            System.out.println("got the request showproductServlet.java");
            response.getWriter().write(records);
        }else{
            response.sendRedirect("product.jsp");
            System.out.println("not getting tag in showproductServlet");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
        
    }
}