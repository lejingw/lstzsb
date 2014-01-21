package com.totyu.apps.test;

import java.net.MalformedURLException;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;

import org.junit.Test;

import com.totyu.apps.ws.Hello4WsService;
import com.totyu.apps.ws.hello4.Hello4Service;
import com.totyu.apps.ws.vo.Customer;

public class Hello4Test {
	//@Test
	public void test02() throws MalformedURLException {
		try {
			Hello4Service customerPort = new Hello4WsService()
					.getHello4WsServicePort();

			Customer customer = new Customer();
			customer.setId(101);
			customer.setName("mk");
			customer.setMyPhoto(new DataHandler(new FileDataSource(
					"/Users/wanglj/Desktop/aaa.jpg")));

			customerPort.uploadCustomerByName(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
