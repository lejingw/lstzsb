package com.lejingw.apps.handler;

import java.util.Iterator;
import java.util.Set;

import javax.xml.namespace.QName;
import javax.xml.soap.Node;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPEnvelope;
import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPFault;
import javax.xml.soap.SOAPHeader;
import javax.xml.soap.SOAPMessage;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.handler.soap.SOAPHandler;
import javax.xml.ws.handler.soap.SOAPMessageContext;
import javax.xml.ws.soap.SOAPFaultException;

public class AuthValidationHandler implements SOAPHandler<SOAPMessageContext> {
	public Set<QName> getHeaders() {
		return null;
	}

	public void close(MessageContext context) {
	}

	public boolean handleFault(SOAPMessageContext context) {
		return false;
	}

	public boolean handleMessage(SOAPMessageContext context) {
		try {
			Boolean outbound = (Boolean) context.get(MessageContext.MESSAGE_OUTBOUND_PROPERTY);
			System.out.println("====handleMessage===="+outbound);
			if (!outbound.booleanValue()) {
				SOAPMessage soapMessage = context.getMessage();
				SOAPEnvelope soapEnvelope = soapMessage.getSOAPPart().getEnvelope();
				
				SOAPBody body = soapEnvelope.getBody();
				String name = body.getFirstChild().getLocalName();
				if(!"sayHello".equals(name)){
					return true;
				}
				
				SOAPHeader header = soapEnvelope.getHeader();
				if (header == null){
					generateSoapFault(soapMessage, "No Message Header...");
				}
				QName qname = new QName("http://ws3.apps.lejingw.com", "licenseInfo", "ns");
//				Iterator iter = header.extractHeaderElements(SOAPConstants.URI_SOAP_1_2_ROLE_NEXT);
				Iterator iter = header.getChildElements(qname);
				if (iter == null || !iter.hasNext()){
					generateSoapFault(soapMessage, "No Header block for role next");
				}
				Node node = (Node)iter.next();
				if(null == node || null == node.getValue()){
					generateSoapFault(soapMessage, "No authation info in header blocks");
				}
				String[] infos = node.getValue().split("_");
				return authValidate(infos[0], infos[1]);
			}
			return true;
		} catch (SOAPException e) {
			e.printStackTrace();
		}
		return false;
	}

	private boolean authValidate(String userName, String password) {
		if (userName == null || password == null) {
			return false;
		}
		if ("admin123".equals(userName) && "111111".equals(password)) {
			return true;
		}
		return false;
	}

	private void generateSoapFault(SOAPMessage soapMessage, String reasion) {
		try {
			SOAPBody soapBody = soapMessage.getSOAPBody();
			SOAPFault soapFault = soapBody.getFault();
			if (soapFault == null) {
				soapFault = soapBody.addFault();
			}
			soapFault.setFaultString(reasion);
			throw new SOAPFaultException(soapFault);
		} catch (SOAPException e) {
			e.printStackTrace();
		}
	}

}