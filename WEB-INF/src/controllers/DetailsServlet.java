package controllers;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;
import models.Product;

@WebServlet("/details.do")
public class DetailsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        HttpSession session = request.getSession();
        Integer imageId = Integer.valueOf(request.getParameter("product_id"));
        String name = request.getParameter("name");
        Integer price = Integer.valueOf(request.getParameter("price"));
        String img = request.getParameter("img");
        String details = request.getParameter("details");
        System.out.println(imageId);
        System.out.println(name);
        System.out.println(img);
        System.out.println(price);
        System.out.println(details);
        Product product = new Product();
        product.setProductId(imageId);
        product.setPrice(price);
        product.setImg(img);
        product.setName(name);
        product.setDetails(details);
        session.setAttribute("Productspecific",product);
        response.sendRedirect("productdetails.jsp");
    }
}