
package com.lejingw.apps.ws2;

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
@WebServiceClient(name = "Hello2WsService", targetNamespace = "http://ws2.apps.lejingw.com", wsdlLocation = "http://localhost:8080/lstzsb/Hello2Service?wsdl")
public class Hello2WsService_Service
    extends Service
{

    private final static URL HELLO2WSSERVICE_WSDL_LOCATION;
    private final static Logger logger = Logger.getLogger(com.lejingw.apps.ws2.Hello2WsService_Service.class.getName());

    static {
        URL url = null;
        try {
            URL baseUrl;
            baseUrl = com.lejingw.apps.ws2.Hello2WsService_Service.class.getResource(".");
            url = new URL(baseUrl, "http://localhost:8080/lstzsb/Hello2Service?wsdl");
        } catch (MalformedURLException e) {
            logger.warning("Failed to create URL for the wsdl Location: 'http://localhost:8080/lstzsb/Hello2Service?wsdl', retrying as a local file");
            logger.warning(e.getMessage());
        }
        HELLO2WSSERVICE_WSDL_LOCATION = url;
    }

    public Hello2WsService_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public Hello2WsService_Service() {
        super(HELLO2WSSERVICE_WSDL_LOCATION, new QName("http://ws2.apps.lejingw.com", "Hello2WsService"));
    }

    /**
     * 
     * @return
     *     returns Hello2WsService
     */
    @WebEndpoint(name = "Hello2WsServicePort")
    public Hello2WsService getHello2WsServicePort() {
        return super.getPort(new QName("http://ws2.apps.lejingw.com", "Hello2WsServicePort"), Hello2WsService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Hello2WsService
     */
    @WebEndpoint(name = "Hello2WsServicePort")
    public Hello2WsService getHello2WsServicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://ws2.apps.lejingw.com", "Hello2WsServicePort"), Hello2WsService.class, features);
    }

}
