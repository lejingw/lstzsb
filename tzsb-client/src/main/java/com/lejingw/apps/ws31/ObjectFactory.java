
package com.lejingw.apps.ws31;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.lejingw.apps.ws31 package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetPagerList_QNAME = new QName("http://ws3.apps.lejingw.com", "getPagerList");
    private final static QName _SayHello_QNAME = new QName("http://ws3.apps.lejingw.com", "sayHello");
    private final static QName _SayHelloResponse_QNAME = new QName("http://ws3.apps.lejingw.com", "sayHelloResponse");
    private final static QName _LicenseInfo_QNAME = new QName("http://ws3.apps.lejingw.com", "licenseInfo");
    private final static QName _GetPagerStr_QNAME = new QName("http://ws3.apps.lejingw.com", "getPagerStr");
    private final static QName _GetPagerStrResponse_QNAME = new QName("http://ws3.apps.lejingw.com", "getPagerStrResponse");
    private final static QName _Hello3WsException_QNAME = new QName("http://ws3.apps.lejingw.com", "Hello3WsException");
    private final static QName _Pager_QNAME = new QName("http://ws3.apps.lejingw.com", "pager");
    private final static QName _GetPagerListResponse_QNAME = new QName("http://ws3.apps.lejingw.com", "getPagerListResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.lejingw.apps.ws31
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetPagerStr }
     * 
     */
    public GetPagerStr createGetPagerStr() {
        return new GetPagerStr();
    }

    /**
     * Create an instance of {@link GetPagerListResponse }
     * 
     */
    public GetPagerListResponse createGetPagerListResponse() {
        return new GetPagerListResponse();
    }

    /**
     * Create an instance of {@link GetPagerStrResponse }
     * 
     */
    public GetPagerStrResponse createGetPagerStrResponse() {
        return new GetPagerStrResponse();
    }

    /**
     * Create an instance of {@link Pager }
     * 
     */
    public Pager createPager() {
        return new Pager();
    }

    /**
     * Create an instance of {@link GetPagerList }
     * 
     */
    public GetPagerList createGetPagerList() {
        return new GetPagerList();
    }

    /**
     * Create an instance of {@link SayHello }
     * 
     */
    public SayHello createSayHello() {
        return new SayHello();
    }

    /**
     * Create an instance of {@link Hello3WsException }
     * 
     */
    public Hello3WsException createHello3WsException() {
        return new Hello3WsException();
    }

    /**
     * Create an instance of {@link SayHelloResponse }
     * 
     */
    public SayHelloResponse createSayHelloResponse() {
        return new SayHelloResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerList }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "getPagerList")
    public JAXBElement<GetPagerList> createGetPagerList(GetPagerList value) {
        return new JAXBElement<GetPagerList>(_GetPagerList_QNAME, GetPagerList.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "sayHello")
    public JAXBElement<SayHello> createSayHello(SayHello value) {
        return new JAXBElement<SayHello>(_SayHello_QNAME, SayHello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "sayHelloResponse")
    public JAXBElement<SayHelloResponse> createSayHelloResponse(SayHelloResponse value) {
        return new JAXBElement<SayHelloResponse>(_SayHelloResponse_QNAME, SayHelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "licenseInfo")
    public JAXBElement<String> createLicenseInfo(String value) {
        return new JAXBElement<String>(_LicenseInfo_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerStr }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "getPagerStr")
    public JAXBElement<GetPagerStr> createGetPagerStr(GetPagerStr value) {
        return new JAXBElement<GetPagerStr>(_GetPagerStr_QNAME, GetPagerStr.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerStrResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "getPagerStrResponse")
    public JAXBElement<GetPagerStrResponse> createGetPagerStrResponse(GetPagerStrResponse value) {
        return new JAXBElement<GetPagerStrResponse>(_GetPagerStrResponse_QNAME, GetPagerStrResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello3WsException }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "Hello3WsException")
    public JAXBElement<Hello3WsException> createHello3WsException(Hello3WsException value) {
        return new JAXBElement<Hello3WsException>(_Hello3WsException_QNAME, Hello3WsException.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Pager }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "pager")
    public JAXBElement<Pager> createPager(Pager value) {
        return new JAXBElement<Pager>(_Pager_QNAME, Pager.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerListResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws3.apps.lejingw.com", name = "getPagerListResponse")
    public JAXBElement<GetPagerListResponse> createGetPagerListResponse(GetPagerListResponse value) {
        return new JAXBElement<GetPagerListResponse>(_GetPagerListResponse_QNAME, GetPagerListResponse.class, null, value);
    }

}
