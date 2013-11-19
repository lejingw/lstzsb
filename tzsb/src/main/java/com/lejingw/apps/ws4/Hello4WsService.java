package com.lejingw.apps.ws4;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.ws.soap.MTOM;

@WebService(name="Hello4WsService") 
@SOAPBinding(style = SOAPBinding.Style.RPC) 
@MTOM
public interface Hello4WsService {
	public void uploadCustomerByName(
			@WebParam(name = "customer") Customer customer); 
}
