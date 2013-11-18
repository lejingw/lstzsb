package com.lejingw.apps.handler;

import java.util.Set;

import javax.xml.namespace.QName;
import javax.xml.soap.SOAPEnvelope;
import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPHeader;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.handler.soap.SOAPHandler;
import javax.xml.ws.handler.soap.SOAPMessageContext;

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
			System.out.println("----"+out);
			if(out){
				SOAPEnvelope enve = ctx.getMessage().getSOAPPart().getEnvelope();
				SOAPHeader header = enve.getHeader();
				if(null == header) header = enve.addHeader();
				QName qname = new QName("http://ws3.apps.lejingw.com", "licenseInfo", "ns");
				header.addHeaderElement(qname).setValue("111322sssss1");
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
