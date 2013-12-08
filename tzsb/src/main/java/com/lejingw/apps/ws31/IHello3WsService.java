
package com.lejingw.apps.ws31;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.totyu.common.Pager;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.3-b02-
 * Generated source version: 2.1
 * 
 */
@WebService(name = "IHello3WsService", targetNamespace = "http://ws3.apps.lejingw.com")
public interface IHello3WsService {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(name = "str", targetNamespace = "")
    @RequestWrapper(localName = "sayHello", targetNamespace = "http://ws3.apps.lejingw.com")
    @ResponseWrapper(localName = "sayHelloResponse", targetNamespace = "http://ws3.apps.lejingw.com")
    public String sayHello(
        @WebParam(name = "name", targetNamespace = "")
        String name, @WebParam(name="licenseInfo", header=true) String licenseInfo) throws Hello3WsException;

    /**
     * 
     * @param limit
     * @param start
     * @return
     *     returns java.util.List<com.lejingw.apps.ws3.Pager>
     */
    @WebMethod
    @WebResult(name = "pager", targetNamespace = "")
    @RequestWrapper(localName = "getPagerList", targetNamespace = "http://ws3.apps.lejingw.com")
    @ResponseWrapper(localName = "getPagerListResponse", targetNamespace = "http://ws3.apps.lejingw.com")
    public List<Pager> getPagerList(
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
    @RequestWrapper(localName = "getPagerStr", targetNamespace = "http://ws3.apps.lejingw.com")
    @ResponseWrapper(localName = "getPagerStrResponse", targetNamespace = "http://ws3.apps.lejingw.com")
    public String getPagerStr(
        @WebParam(name = "pager", targetNamespace = "")
        Pager pager);

}
