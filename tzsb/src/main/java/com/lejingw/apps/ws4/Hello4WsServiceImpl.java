package com.lejingw.apps.ws4;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.jws.WebService;

@WebService(serviceName = "Hello4WsService",
			portName = "Hello4WsServicePort",
			targetNamespace = "http://ws4.apps.lejingw.com/",
			endpointInterface = "com.lejingw.apps.ws4.Hello4WsService",
			wsdlLocation="/WEB-INF/wsdl4/Hello4WsService.wsdl")
public class Hello4WsServiceImpl implements Hello4WsService {

	@Override
	public void uploadCustomerByName(Customer customer) {
		InputStream is = null;
		OutputStream os = null;
		try {
			System.out.println("customer====" + customer.getId() + "  "
					+ customer.getName());
			System.out.println("generate jpg......");
			is = customer.getMyPhoto().getInputStream();
			os = new FileOutputStream("/Users/wanglj/Desktop/abc.jpg");
			byte[] bytes = new byte[1024];
			int c;
			while ((c = is.read(bytes)) != -1) {
				os.write(bytes, 0, c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (os != null) {
					os.close();
					os = null;
				}
			} catch (Exception e) {
			}
			try {
				if (is != null) {
					is.close();
					is = null;
				}
			} catch (Exception e) {
			}
		}
	}

}
