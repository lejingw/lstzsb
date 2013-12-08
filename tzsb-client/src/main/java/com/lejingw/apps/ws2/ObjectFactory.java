
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
    private final static QName _GetPagerList_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerList");
    private final static QName _SayHello_QNAME = new QName("http://ws2.apps.lejingw.com", "sayHello");
    private final static QName _SayHelloResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "sayHelloResponse");
    private final static QName _GetPagerListResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerListResponse");
    private final static QName _GetPagerResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerResponse");
    private final static QName _SavaPicData2Response_QNAME = new QName("http://ws2.apps.lejingw.com", "savaPicData2Response");
    private final static QName _GetPager_QNAME = new QName("http://ws2.apps.lejingw.com", "getPager");
    private final static QName _SavaPicData2_QNAME = new QName("http://ws2.apps.lejingw.com", "savaPicData2");
    private final static QName _GetPagerStrResponse_QNAME = new QName("http://ws2.apps.lejingw.com", "getPagerStrResponse");
    private final static QName _SavaPicData2Arg0_QNAME = new QName("", "arg0");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.lejingw.apps.ws2
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SayHello }
     * 
     */
    public SayHello createSayHello() {
        return new SayHello();
    }

    /**
     * Create an instance of {@link SavaPicData2Response }
     * 
     */
    public SavaPicData2Response createSavaPicData2Response() {
        return new SavaPicData2Response();
    }

    /**
     * Create an instance of {@link Pager }
     * 
     */
    public Pager createPager() {
        return new Pager();
    }

    /**
     * Create an instance of {@link SayHelloResponse }
     * 
     */
    public SayHelloResponse createSayHelloResponse() {
        return new SayHelloResponse();
    }

    /**
     * Create an instance of {@link SavaPicData2 }
     * 
     */
    public SavaPicData2 createSavaPicData2() {
        return new SavaPicData2();
    }

    /**
     * Create an instance of {@link GetPagerResponse }
     * 
     */
    public GetPagerResponse createGetPagerResponse() {
        return new GetPagerResponse();
    }

    /**
     * Create an instance of {@link GetPagerStrResponse }
     * 
     */
    public GetPagerStrResponse createGetPagerStrResponse() {
        return new GetPagerStrResponse();
    }

    /**
     * Create an instance of {@link GetPagerStr }
     * 
     */
    public GetPagerStr createGetPagerStr() {
        return new GetPagerStr();
    }

    /**
     * Create an instance of {@link GetPagerList }
     * 
     */
    public GetPagerList createGetPagerList() {
        return new GetPagerList();
    }

    /**
     * Create an instance of {@link GetPager }
     * 
     */
    public GetPager createGetPager() {
        return new GetPager();
    }

    /**
     * Create an instance of {@link GetPagerListResponse }
     * 
     */
    public GetPagerListResponse createGetPagerListResponse() {
        return new GetPagerListResponse();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerList }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPagerList")
    public JAXBElement<GetPagerList> createGetPagerList(GetPagerList value) {
        return new JAXBElement<GetPagerList>(_GetPagerList_QNAME, GetPagerList.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerListResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPagerListResponse")
    public JAXBElement<GetPagerListResponse> createGetPagerListResponse(GetPagerListResponse value) {
        return new JAXBElement<GetPagerListResponse>(_GetPagerListResponse_QNAME, GetPagerListResponse.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link SavaPicData2Response }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "savaPicData2Response")
    public JAXBElement<SavaPicData2Response> createSavaPicData2Response(SavaPicData2Response value) {
        return new JAXBElement<SavaPicData2Response>(_SavaPicData2Response_QNAME, SavaPicData2Response.class, null, value);
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
     * Create an instance of {@link JAXBElement }{@code <}{@link SavaPicData2 }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "savaPicData2")
    public JAXBElement<SavaPicData2> createSavaPicData2(SavaPicData2 value) {
        return new JAXBElement<SavaPicData2>(_SavaPicData2_QNAME, SavaPicData2 .class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPagerStrResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws2.apps.lejingw.com", name = "getPagerStrResponse")
    public JAXBElement<GetPagerStrResponse> createGetPagerStrResponse(GetPagerStrResponse value) {
        return new JAXBElement<GetPagerStrResponse>(_GetPagerStrResponse_QNAME, GetPagerStrResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link byte[]}{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "arg0", scope = SavaPicData2 .class)
    public JAXBElement<byte[]> createSavaPicData2Arg0(byte[] value) {
        return new JAXBElement<byte[]>(_SavaPicData2Arg0_QNAME, byte[].class, SavaPicData2 .class, ((byte[]) value));
    }

}
