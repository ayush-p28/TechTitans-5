package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/show_product.do")
public class ShowProductImagesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        

        if(name!=null) {
            InputStream is = getServletContext().getResourceAsStream("WEB-INF/uploads/product_images/"+name);

            OutputStream os = response.getOutputStream(); 

            byte[] arr = new byte[1024];
            int count = 0;

            while((count=is.read(arr)) != -1) {
                os.write(arr);
            }

            os.flush();
            os.close();
        }
    }
}