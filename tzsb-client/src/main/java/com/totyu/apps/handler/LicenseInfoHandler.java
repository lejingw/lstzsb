package com.totyu.apps.handler;

import java.io.IOException;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.xml.namespace.QName;
import javax.xml.soap.SOAPBody;
import javax.xml.soap.SOAPEnvelope;
import javax.xml.soap.SOAPException;
import javax.xml.soap.SOAPHeader;
import javax.xml.soap.SOAPHeaderElement;
import javax.xml.soap.SOAPMessage;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.handler.soap.SOAPHandler;
import javax.xml.ws.handler.soap.SOAPMessageContext;

//import com.lejingw.apps.web.LoginUserContext;

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
			System.out.println("====handleMessage:"+out);
			if(out){
				SOAPMessage message = ctx.getMessage();
				SOAPEnvelope enve = message.getSOAPPart().getEnvelope();
				
				SOAPBody body = enve.getBody();
				String name = body.getFirstChild().getLocalName();
				System.out.println("=====call1:"+name);
				try {
					message.writeTo(System.out);
					System.out.println();
				} catch (IOException e) {
					e.printStackTrace();
				}
				if(!"sayHello".equals(name)){
					SOAPHeader header = enve.getHeader();
					if(null == header) header = enve.addHeader();
					
					QName qname = new QName("http://ws3.apps.lejingw.com", "licenseInfo", "ns");
					String userName = "admin_111111";//LoginUserContext.getLoginUser();
					if(null == userName) userName = "";
					
					SOAPHeaderElement headElement = header.addHeaderElement(qname);
					headElement.setValue(userName);
					if(message.saveRequired()){
						message.saveChanges();
					}
				}
				System.out.println("=====call2:"+name);
				try {
					message.writeTo(System.out);
					System.out.println();
				} catch (IOException e) {
					e.printStackTrace();
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
