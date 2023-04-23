import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/forget.do")
public class Forgetpass extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        
        // User user    panding work
    }
}