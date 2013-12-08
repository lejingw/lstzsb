package com.lejingw.apps.ws4.test;

import java.net.MalformedURLException;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;

import com.lejingw.apps.ws4.Customer;
import com.lejingw.apps.ws4.Hello4WsService;
import com.lejingw.apps.ws4.Hello4WsService_Service;

public class Test4 {
	@org.junit.Test
	public void test01() throws MalformedURLException {
		Hello4WsService service = new Hello4WsService_Service().getHello4WsServicePort();
		 System.out.println(service);
	}

	@org.junit.Test
	public void test02() throws MalformedURLException {
		try {
			Hello4WsService customerPort = new Hello4WsService_Service().getHello4WsServicePort();

			Customer customer = new Customer();
			customer.setId(101);
			customer.setName("mk");
			customer.setMyPhoto(new DataHandler(new FileDataSource("/Users/wanglj/Desktop/aaa.jpg")));
			
			customerPort.uploadCustomerByName(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
