package com.lejingw.apps.ws4;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;


@WebService(targetNamespace="http://ws4.apps.lejingw.com")
public interface Hello4WsService {
	@WebMethod
	public void uploadCustomerByName(@WebParam(name = "customer") Customer customer);
}
