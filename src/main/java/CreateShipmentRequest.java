
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

@WebServlet(name = "createshipmentrequest", value = { "/CreateShipmentRequest" })
public class CreateShipmentRequest extends HttpServlet
{
    private soap_request_service soap_request_service_instance;
    private static final long serialVersionUID = 1L;
    private String warPath;

    public CreateShipmentRequest() {
        this.soap_request_service_instance = null;
    }

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.warPath = new File(this.getServletContext().getRealPath("/")).getAbsolutePath();
        System.out.println(this.warPath);
        final soap_request_service soap_request_service_instance = this.soap_request_service_instance;
        this.soap_request_service_instance = soap_request_service.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("account_number").length() != 14)
        {
            request.setAttribute("error_code", "account number should be 14 char");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");

            requestDispatcher.forward(request, response);
        }else
            {
                InputStream soap_response = this.soap_request_service_instance.send_soap_request(request);
                CreateShipmentOrderModel createShipmentOrderModel = this.soap_request_service_instance.convertResponseToObject(soap_response);
             
                request.setAttribute("shipmentNumber", createShipmentOrderModel.getShipment_number());
            
                request.setAttribute("statusMessage", createShipmentOrderModel.getStatusMessage());
            
                request.setAttribute("labelUrl", createShipmentOrderModel.getLabelUrl());
               
                request.setAttribute("statusText", createShipmentOrderModel.getStatusText());
                
              
                RequestDispatcher requestDispatcher = createShipmentOrderModel.getShipment_number()
                        .equals("shipment_number") ? request.getRequestDispatcher("error.jsp")
                                : request.getRequestDispatcher("home1.jsp");

                requestDispatcher.forward(request, response);
            }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}