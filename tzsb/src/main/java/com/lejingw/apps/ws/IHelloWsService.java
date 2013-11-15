
package com.lejingw.apps.ws;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.totyu.common.Pager;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.6 in JDK 6
 * Generated source version: 2.1
 * 
 */
@WebService(name = "IHelloWsService", targetNamespace = "http://ws.apps.lejingw.com")
public interface IHelloWsService {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(name = "str", targetNamespace = "")
    @RequestWrapper(localName = "sayHello", targetNamespace = "http://ws.apps.lejingw.com", className = "com.lejingw.apps.ws.SayHello")
    @ResponseWrapper(localName = "sayHelloResponse", targetNamespace = "http://ws.apps.lejingw.com", className = "com.lejingw.apps.ws.SayHelloResponse")
    public String sayHello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

    /**
     * 
     * @param limit
     * @param start
     * @return
     *     returns com.lejingw.apps.ws.Pager
     */
    @WebMethod
    @WebResult(name = "pager", targetNamespace = "")
    @RequestWrapper(localName = "getPager", targetNamespace = "http://ws.apps.lejingw.com", className = "com.lejingw.apps.ws.GetPager")
    @ResponseWrapper(localName = "getPagerResponse", targetNamespace = "http://ws.apps.lejingw.com", className = "com.lejingw.apps.ws.GetPagerResponse")
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
    @WebResult(name = "str", targetNamespace = "")
    @RequestWrapper(localName = "getPagerStr", targetNamespace = "http://ws.apps.lejingw.com", className = "com.lejingw.apps.ws.GetPagerStr")
    @ResponseWrapper(localName = "getPagerStrResponse", targetNamespace = "http://ws.apps.lejingw.com", className = "com.lejingw.apps.ws.GetPagerStrResponse")
    public String getPagerStr(
        @WebParam(name = "pager", targetNamespace = "")
        Pager pager);

}
