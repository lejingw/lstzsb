
package org.konghao.student.ws;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Logger;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.3-b02-
 * Generated source version: 2.1
 * 
 */
@WebServiceClient(name = "StudentWsService", targetNamespace = "http://ws.student.konghao.org", wsdlLocation = "http://localhost:8787/stu/ss?wsdl")
public class StudentWsService
    extends Service
{

    private final static URL STUDENTWSSERVICE_WSDL_LOCATION;
    private final static Logger logger = Logger.getLogger(org.konghao.student.ws.StudentWsService.class.getName());

    static {
        URL url = null;
        try {
            URL baseUrl;
            baseUrl = org.konghao.student.ws.StudentWsService.class.getResource(".");
            url = new URL(baseUrl, "http://localhost:8787/stu/ss?wsdl");
        } catch (MalformedURLException e) {
            logger.warning("Failed to create URL for the wsdl Location: 'http://localhost:8787/stu/ss?wsdl', retrying as a local file");
            logger.warning(e.getMessage());
        }
        STUDENTWSSERVICE_WSDL_LOCATION = url;
    }

    public StudentWsService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public StudentWsService() {
        super(STUDENTWSSERVICE_WSDL_LOCATION, new QName("http://ws.student.konghao.org", "StudentWsService"));
    }

    /**
     * 
     * @return
     *     returns IStudentWsService
     */
    @WebEndpoint(name = "StudentWsServicePort")
    public IStudentWsService getStudentWsServicePort() {
        return super.getPort(new QName("http://ws.student.konghao.org", "StudentWsServicePort"), IStudentWsService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IStudentWsService
     */
    @WebEndpoint(name = "StudentWsServicePort")
    public IStudentWsService getStudentWsServicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://ws.student.konghao.org", "StudentWsServicePort"), IStudentWsService.class, features);
    }

}
