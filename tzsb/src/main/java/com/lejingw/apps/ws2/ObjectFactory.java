
package com.lejingw.apps.ws2;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.lejingw.apps.ws2 package. 
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

    private final static QName _GetPagerStr_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerStr");
    private final static QName _SayHello_QNAME = new QName("http://ws2.apps.lejingw.com", "sayHello");
    private final static QName _SayHelloResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "sayHelloResponse");
    private final static QName _GetPagerResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerResponse");
    private final static QName _GetPager_QNAME = new QName("http://ws2.apps.lejingw.com", "getPager");
    private final static QName _GetPagerStrResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerStrResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.lejingw.apps.ws2
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Pager }
     * 
     */
    public Pager createPager() {
        return new Pager();
    }

    /**
     * Create an instance of {@link GetPagerStr }
     * 
     */
    public GetPagerStr createGetPagerStr() {
        return new GetPagerStr();
    }

    /**
     * Create an instance of {@link GetPagerStrResponse }
     * 
     */
    public GetPagerStrResponse createGetPagerStrResponse() {
        return new GetPagerStrResponse();
    }

    /**
     * Create an instance of {@link GetPagerResponse }
     * 
     */
    public GetPagerResponse createGetPagerResponse() {
        return new GetPagerResponse();
    }

    /**
     * Create an instance of {@link SayHello }
     * 
     */
    public SayHello createSayHello() {
        return new SayHello();
    }

    /**
     * Create an instance of {@link GetPager }
     * 
     */
    public GetPager createGetPager() {
        return new GetPager();
    }

    /**
     * Create an instance of {@link SayHelloResponse }
     * 
     */
    public SayHelloResponse createSayHelloResponse() {
        return new SayHelloResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerStr }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPagerStr")
    public JAXBElement<GetPagerStr> createGetPagerStr(GetPagerStr value) {
        return new JAXBElement<GetPagerStr>(_GetPagerStr_QNAME, GetPagerStr.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "sayHello")
    public JAXBElement<SayHello> createSayHello(SayHello value) {
        return new JAXBElement<SayHello>(_SayHello_QNAME, SayHello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "sayHelloResponse")
    public JAXBElement<SayHelloResponse> createSayHelloResponse(SayHelloResponse value) {
        return new JAXBElement<SayHelloResponse>(_SayHelloResponse_QNAME, SayHelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPagerResponse")
    public JAXBElement<GetPagerResponse> createGetPagerResponse(GetPagerResponse value) {
        return new JAXBElement<GetPagerResponse>(_GetPagerResponse_QNAME, GetPagerResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPager }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPager")
    public JAXBElement<GetPager> createGetPager(GetPager value) {
        return new JAXBElement<GetPager>(_GetPager_QNAME, GetPager.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerStrResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPagerStrResponse")
    public JAXBElement<GetPagerStrResponse> createGetPagerStrResponse(GetPagerStrResponse value) {
        return new JAXBElement<GetPagerStrResponse>(_GetPagerStrResponse_QNAME, GetPagerStrResponse.class, null, value);
    }

}
