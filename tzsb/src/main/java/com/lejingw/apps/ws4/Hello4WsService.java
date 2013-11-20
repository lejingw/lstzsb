package com.lejingw.apps.ws4;

import javax.jws.WebService;


@WebService(targetNamespace="http://ws4.apps.lejingw.com")
public interface Hello4WsService {
	public void uploadCustomerByName(Customer customer);
}
