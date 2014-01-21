
package com.totyu.apps.ws;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Logger;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;

import com.totyu.apps.ws.tzsb.TzsbService;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.3-b02-
 * Generated source version: 2.1
 * 
 */
@WebServiceClient(name = "TzsbWsService", targetNamespace = "http://ws.web.totyu.com", wsdlLocation = "http://localhost:8080/lstzsb/TzsbWsService?wsdl")
public class TzsbWsService
    extends Service
{

    private final static URL TZSBWSSERVICE_WSDL_LOCATION;
    private final static Logger logger = Logger.getLogger(com.totyu.apps.ws.TzsbWsService.class.getName());

    static {
        URL url = null;
        try {
            URL baseUrl;
            baseUrl = com.totyu.apps.ws.TzsbWsService.class.getResource(".");
            url = new URL(baseUrl, "http://localhost:8080/lstzsb/TzsbWsService?wsdl");
        } catch (MalformedURLException e) {
            logger.warning("Failed to create URL for the wsdl Location: 'http://localhost:8080/lstzsb/TzsbWsService?wsdl', retrying as a local file");
            logger.warning(e.getMessage());
        }
        TZSBWSSERVICE_WSDL_LOCATION = url;
    }

    public TzsbWsService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public TzsbWsService() {
        super(TZSBWSSERVICE_WSDL_LOCATION, new QName("http://ws.web.totyu.com", "TzsbWsService"));
    }

    /**
     * 
     * @return
     *     returns TzsbWebService
     */
    @WebEndpoint(name = "TzsbWsServicePort")
    public TzsbService getTzsbWsServicePort() {
        return super.getPort(new QName("http://ws.web.totyu.com", "TzsbWsServicePort"), TzsbService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns TzsbWebService
     */
    @WebEndpoint(name = "TzsbWsServicePort")
    public TzsbService getTzsbWsServicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://ws.web.totyu.com", "TzsbWsServicePort"), TzsbService.class, features);
    }

}
