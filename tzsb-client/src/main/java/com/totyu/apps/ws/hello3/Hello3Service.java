
package com.totyu.apps.ws.hello3;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.totyu.apps.ws.WsException;
import com.totyu.common.Pager;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.3-b02-
 * Generated source version: 2.1
 * 
 */
@WebService(name = "Hello3Service", targetNamespace = "http://ws.web.totyu.com")
public interface Hello3Service {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     * @throws WsException_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "sayHello", targetNamespace = "http://ws.web.totyu.com")
    @ResponseWrapper(localName = "sayHelloResponse", targetNamespace = "http://ws.web.totyu.com")
    public String sayHello(
        @WebParam(name = "name", targetNamespace = "")
        String name)
        throws WsException
    ;

    /**
     * 
     * @param limit
     * @param start
     * @return
     *     returns com.totyu.apps.ws.hello3.Pager
     * @throws WsException_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPager", targetNamespace = "http://ws.web.totyu.com")
    @ResponseWrapper(localName = "getPagerResponse", targetNamespace = "http://ws.web.totyu.com")
    public Pager getPager(
        @WebParam(name = "start", targetNamespace = "")
        int start,
        @WebParam(name = "limit", targetNamespace = "")
        int limit)
        throws WsException
    ;

    /**
     * 
     * @param pager
     * @return
     *     returns java.lang.String
     * @throws WsException_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPagerStr", targetNamespace = "http://ws.web.totyu.com")
    @ResponseWrapper(localName = "getPagerStrResponse", targetNamespace = "http://ws.web.totyu.com")
    public String getPagerStr(
        @WebParam(name = "pager", targetNamespace = "")
        Pager pager)
        throws WsException
    ;

}
