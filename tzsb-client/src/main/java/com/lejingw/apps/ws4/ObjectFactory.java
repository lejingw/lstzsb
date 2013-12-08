package com.lejingw.apps.ws4;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;

/**
 * This object contains factory methods for each Java content interface and Java
 * element interface generated in the com.lejingw.apps.ws4 package.
 * <p>
 * An ObjectFactory allows you to programatically construct new instances of the
 * Java representation for XML content. The Java representation of XML content
 * can consist of schema derived interfaces and classes representing the binding
 * of schema type definitions, element declarations and model groups. Factory
 * methods for each of these are provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

	private final static QName _Customer_QNAME = new QName(
			"http://ws4.apps.lejingw.com", "Customer");

	/**
	 * Create a new ObjectFactory that can be used to create new instances of
	 * schema derived classes for package: com.lejingw.apps.ws4
	 * 
	 */
	public ObjectFactory() {
	}

	/**
	 * Create an instance of {@link Customer }
	 * 
	 */
	public Customer createCustomer() {
		return new Customer();
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link Customer }
	 * {@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://ws4.apps.lejingw.com", name = "Customer")
	public JAXBElement<Customer> createCustomer(Customer value) {
		return new JAXBElement<Customer>(_Customer_QNAME, Customer.class, null,
				value);
	}

}
