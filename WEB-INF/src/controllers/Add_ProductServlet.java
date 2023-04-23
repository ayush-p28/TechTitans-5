package controllers;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.*;
import models.*;
import java.io.*;
import java.util.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
@WebServlet("/addproduct.do")
public class Add_ProductServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        String email = String.valueOf(session.getAttribute("email"));
        if(email.equals("sandeeprajakjbp2002@gmail.com")){
            response.sendRedirect("addproduct.jsp");
        }else {
            response.sendRedirect("next.jsp");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        HttpSession session = request.getSession();
        String email = String.valueOf(session.getAttribute("email"));
        // String name = request.getParameter("name");
        // Integer price = Integer.parseInt(request.getParameter("price"));
        // String details = request.getParameter("details");
        // Integer min_age = Integer.parseInt(request.getParameter("min_age"));
        // Integer discount = Integer.parseInt(request.getParameter("discount"));
        // System.out.println(name);
        // System.out.println(price);
        // System.out.println(details);
        // System.out.println(min_age);
        // System.out.println(discount);
        Product product = new Product();
        if(email.equals("sandeeprajakjbp2002@gmail.com")){
            if(ServletFileUpload.isMultipartContent(request)){
                DiskFileItemFactory dfif = new DiskFileItemFactory();
                ServletFileUpload sfu = new ServletFileUpload(dfif);
                try{
                    List<FileItem> list = sfu.parseRequest(request);

                    for(FileItem fileItem : list){
                        String fieldName = fileItem.getFieldName();

                        if(fileItem.isFormField()){
                            if(fieldName.equals("name")){
                                product.setName(fileItem.getString());
                            }else if(fieldName.equals("price")){
                                product.setPrice(Integer.parseInt(fileItem.getString()));
                            }else if(fieldName.equals("details")){
                                product.setDetails(fileItem.getString());
                            }else if(fieldName.equals("min_age")){
                                product.setMinAge(Integer.parseInt(fileItem.getString()));
                            }else if(fieldName.equals("discount")){
                                product.setDiscount(Integer.parseInt(fileItem.getString()));
                            }
                        }else{
                            String path = getServletContext().getRealPath("/WEB-INF/uploads/product_images");
                            File fileUploadFolder = new File(path);
                            fileUploadFolder.mkdir();
                            
                            Random random = new Random();
                            String fileName = random.nextLong()+"_"+ fileItem.getName();

                            File file = new File(path,fileName);
                            fileItem.write(file);
                            product.setImg(fileName);
                        }
                    }
                }catch(Exception e){
                    e.printStackTrace();
                }
            }
        }
        boolean flag = product.addProduct();
        
        if(flag==true){
            response.sendRedirect("next.jsp");
        }
    }
}