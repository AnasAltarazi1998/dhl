import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // check login...

        String fullName = "John John";

        request.setAttribute("name", fullName);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");

        requestDispatcher.forward(request, response);

    }

}