package com.totyu.web.ws.handler;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.xml.namespace.QName;
import javax.xml.soap.Detail;
import javax.xml.soap.Node;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPElement;
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

	@Override
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
			HttpServletRequest request = (HttpServletRequest)context.get(SOAPMessageContext.SERVLET_REQUEST);
			if(null != request)
				System.out.println("====request ip:"+request.getRemoteAddr());
			Boolean outbound = (Boolean) context.get(MessageContext.MESSAGE_OUTBOUND_PROPERTY);
			System.out.println("====handleMessage===="+outbound);
			if (!outbound.booleanValue()) {
				SOAPMessage soapMessage = context.getMessage();
				SOAPEnvelope soapEnvelope = soapMessage.getSOAPPart().getEnvelope();
				
				SOAPBody body = soapEnvelope.getBody();
				String name = body.getFirstChild().getLocalName();
				if("sayHello".equals(name)){
					return true;
				}

				System.out.println("=====call2:"+name);
				try {
					soapMessage.writeTo(System.out);
					System.out.println();
				} catch (IOException e) {
					e.printStackTrace();
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
				boolean result = authValidate(infos[0], infos[1]);
				if(!result){
					generateSoapFault(soapMessage, "authation fail");
				}
				//return result;
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

	private void generateSoapFault(SOAPMessage soapMessage, String reason) throws SOAPException {
		SOAPBody soapBody = soapMessage.getSOAPBody();
		SOAPFault soapFault = soapBody.getFault();
		if (soapFault == null) {
			soapFault = soapBody.addFault();
		}
		soapFault.setFaultString(reason);
		Detail detail = soapFault.addDetail();
		QName qname = new QName("http://ws.web.totyu.com", "WsException", "ns2");
		SOAPElement elm = detail.addChildElement(qname);
		elm.addChildElement("message").setValue(reason);
		throw new SOAPFaultException(soapFault);
	}

}