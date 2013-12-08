package com.lejingw.apps.handler;

import java.util.Set;

import javax.xml.namespace.QName;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPConstants;
import javax.xml.soap.SOAPEnvelope;
import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPHeader;
import javax.xml.soap.SOAPHeaderElement;
import javax.xml.soap.SOAPMessage;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.handler.soap.SOAPHandler;
import javax.xml.ws.handler.soap.SOAPMessageContext;

import com.lejingw.apps.web.LoginUserContext;

public class LicenseInfoHandler implements SOAPHandler<SOAPMessageContext>{

	@Override
	public void close(MessageContext arg0) {
	}

	@Override
	public boolean handleFault(SOAPMessageContext arg0) {
		return false;
	}

	@Override
	public boolean handleMessage(SOAPMessageContext ctx) {
		try {
			Boolean out = (Boolean)ctx.get(SOAPMessageContext.MESSAGE_OUTBOUND_PROPERTY);
			System.out.println("====handleMessage===="+out);
			if(out){
				SOAPMessage message = ctx.getMessage();
				SOAPEnvelope enve = message.getSOAPPart().getEnvelope();
				SOAPBody body = enve.getBody();
				String name = body.getFirstChild().getLocalName();
				if("sayHello".equals(name)){
					SOAPHeader header = enve.getHeader();
					if(null == header) header = enve.addHeader();
					
					QName qname = new QName("http://ws3.apps.lejingw.com", "licenseInfo", "ns");
					String userName = LoginUserContext.getLoginUser();
					System.out.println("hander:"+userName);
					if(null == userName) userName = "";
					header.addHeaderElement(qname).setValue(userName);
					
					/**
					QName qname_user = new QName("http://ws3.apps.lejingw.com", "licenseInfo");
//					QName qname_user = new QName("http://fromjava.ws.ctsjavacoe/", "AuthorServerImplService");
					SOAPHeaderElement headerElement = header.addHeaderElement(qname_user);
					headerElement.setActor(SOAPConstants.URI_SOAP_1_2_ROLE_NEXT);
					headerElement.addTextNode("admin&admin1");
					message.saveChanges();
					//message.writeTo(System.out);
					 */
				}
			}
			return true;
		} catch (SOAPException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Set<QName> getHeaders() {
		return null;
	}

}
