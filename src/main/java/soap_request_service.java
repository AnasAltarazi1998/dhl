
import java.io.*;
import javax.servlet.http.*;
import io.restassured.*;
import io.restassured.response.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import static io.restassured.RestAssured.*;
public class soap_request_service {
    private static soap_request_service instance;

    public static soap_request_service getInstance() {
        if (soap_request_service.instance == null) {
            soap_request_service.instance = new soap_request_service();
        }
        return soap_request_service.instance;
    }

    public String readRequestFile() {
         File file = new File(urls.create_shipment_soap_request_path);
        try {
             FileInputStream fis = new FileInputStream(file);
            try {
                 BufferedInputStream bis = new BufferedInputStream(fis);
                try {
                    String fileContents = new String(bis.readAllBytes());
                    bis.close();
                    fis.close();
                    String s = fileContents;
                    bis.close();
                    fis.close();
                    return s;
                }
                catch (Throwable t) {
                    try {
                        bis.close();
                    }
                    catch (Throwable t2) {
                        t.addSuppressed(t2);
                    }
                    throw t;
                }
            }
            catch (Throwable t3) {
                try {
                    fis.close();
                }
                catch (Throwable t4) {
                    t3.addSuppressed(t4);
                }
                throw t3;
            }
        }
        catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    private String request_with_form_value(final HttpServletRequest request) {
        return readRequestFile()
        		.replaceFirst("PRODUCT", request.getParameter("product"))
        		.replaceFirst("ACCOUNT_NUMBER", request.getParameter("account_number"))
        		.replaceFirst("CUSTOMER_REFERENCE", request.getParameter("customer_reference"))
        		.replaceFirst("SHIPMENT_DATE", request.getParameter("shipment_date").replaceAll("/", "-"))
        		.replaceFirst("PRODUCT_WEIGHT", request.getParameter("product_weight"))
        		.replaceFirst("RECIEPENT_EMAIL_ADDRESS", request.getParameter("recipient_email_address"))
        		.replaceFirst("SHIPER_NAME", request.getParameter("shiper_name"))
        		.replaceFirst("SHIPER_STREET_NAME", request.getParameter("shiper_street_name"))
        		.replaceFirst("SHIPER_STREET_NUMBER", request.getParameter("shiper_street_number"))
        		.replaceFirst("SHIPER_ZIP", request.getParameter("shiper_address_zip"))
        		.replaceFirst("SHIPER_CITY", request.getParameter("shiper_address_city"))
        		.replaceFirst("SHIPER_COUNTRY_CODE", request.getParameter("shiper_country_code"))
        		.replaceFirst("RECEIVER_NAME", request.getParameter("receiver_name"))
        		.replaceFirst("RECEIVER_STREET_NAME", request.getParameter("receiver_street_name"))
        		.replaceFirst("RECEIVER_STREET_NUMBER", request.getParameter("receiver_street_number"))
        		.replaceFirst("RECEIVER_ZIP", request.getParameter("receiver_address_zip"))
        		.replaceFirst("RECEIVER_CITY", request.getParameter("receiver_address_city"))
        		.replaceFirst("RECEIVER_COUNTRY_CODE", request.getParameter("receiver_country_code"));
    }

    public InputStream send_soap_request(final HttpServletRequest request) {
        RestAssured.baseURI = urls.dhl_sandbox_request;
        Response response =
        		given()
        		.header("content-type", "text/xml;charset=UTF-8")
        		.and()
        		.header("Authorization","Basic dGVzc2Fmb2xkOlNoYW0xMjM0IQ==")
        		.and()
        		.body(request_with_form_value(request))
        		.when()
        		.post("/soap")
        		.then()
        		.and()
        		.log()
        		.all()
        		.extract()
        		.response();
        return response.asInputStream();
    }

    public CreateShipmentOrderModel convertResponseToObject(InputStream xml) {
    CreateShipmentOrderModel createShipmentOrderModel = new CreateShipmentOrderModel();
        Document doc = null;
        try {
             DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
             DocumentBuilder db = dbf.newDocumentBuilder();
             doc = db.parse(xml);
             doc.getDocumentElement().normalize();
             createShipmentOrderModel.setStatusText(doc.getElementsByTagName("statusText").item(0).getTextContent());
             NodeList nodeList = doc.getElementsByTagName("CreationState");
            Node node = nodeList.item(0);
            Element eElement = (Element)node;
            createShipmentOrderModel.setStatusMessage(eElement.getElementsByTagName("statusMessage").item(0).getTextContent());
            createShipmentOrderModel.setShipment_number(doc.getElementsByTagName("shipmentNumber").item(0).getTextContent());
            createShipmentOrderModel.setLabelUrl(eElement.getElementsByTagName("labelUrl").item(0).getTextContent());
            System.out.println("Root element: " + doc.getDocumentElement().getNodeName());
            return createShipmentOrderModel;
        }
        catch (NullPointerException | ParserConfigurationException | SAXException | IOException e) {
            createShipmentOrderModel.setShipment_number("shipment_number");
           return createShipmentOrderModel;

        }
    }
}