
package com.lejingw.apps.ws2;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.6 in JDK 6
 * Generated source version: 2.1
 * 
 */
@WebService(name = "IHelloService", targetNamespace = "http://ws2.apps.lejingw.com")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface IHelloService {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "sayHello", targetNamespace = "http://ws2.apps.lejingw.com", className = "com.lejingw.apps.ws2.SayHello")
    @ResponseWrapper(localName = "sayHelloResponse", targetNamespace = "http://ws2.apps.lejingw.com", className = "com.lejingw.apps.ws2.SayHelloResponse")
    public String sayHello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

    /**
     * 
     * @param limit
     * @param start
     * @return
     *     returns com.lejingw.apps.ws2.Pager
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPager", targetNamespace = "http://ws2.apps.lejingw.com", className = "com.lejingw.apps.ws2.GetPager")
    @ResponseWrapper(localName = "getPagerResponse", targetNamespace = "http://ws2.apps.lejingw.com", className = "com.lejingw.apps.ws2.GetPagerResponse")
    public Pager getPager(
        @WebParam(name = "start", targetNamespace = "")
        int start,
        @WebParam(name = "limit", targetNamespace = "")
        int limit);

    /**
     * 
     * @param pager
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPagerStr", targetNamespace = "http://ws2.apps.lejingw.com", className = "com.lejingw.apps.ws2.GetPagerStr")
    @ResponseWrapper(localName = "getPagerStrResponse", targetNamespace = "http://ws2.apps.lejingw.com", className = "com.lejingw.apps.ws2.GetPagerStrResponse")
    public String getPagerStr(
        @WebParam(name = "pager", targetNamespace = "")
        Pager pager);

}