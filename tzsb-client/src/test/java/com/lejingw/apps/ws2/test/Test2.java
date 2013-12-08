package com.lejingw.apps.ws2.test;

import javax.xml.ws.AsyncHandler;
import javax.xml.ws.Holder;
import javax.xml.ws.Response;
import javax.xml.ws.soap.MTOMFeature;

import org.junit.Before;
import org.junit.Test;

import com.lejingw.apps.ws2.GetPagerStrResponse;
import com.lejingw.apps.ws2.Hello2WsService;
import com.lejingw.apps.ws2.Hello2WsService_Service;
import com.lejingw.apps.ws2.Pager;
import com.lejingw.apps.ws2.SayHelloResponse;

public class Test2 {
	private Hello2WsService service;
	@Before
	public void init(){
		service = new Hello2WsService_Service().getHello2WsServicePort();
	}
	
//	@org.junit.Test
//	public void test01(){
//		System.out.println(service.sayHello("world"));
//		Response<SayHelloResponse> sayAsync = service.sayHelloAsync("Mk");
//        while (!sayAsync.isDone()) {
//            System.out.println("is not down");
//        }
//        try {
//        	SayHelloResponse callNameResponse = sayAsync.get();
//            String message = callNameResponse.getReturn();
//            System.out.println(message);
//        } catch (Exception ex) {
//        }
//	}
	
	@Test
	public void test02(){
		service.sayHelloAsync("Mk", new AsyncHandler<SayHelloResponse>() {
            public void handleResponse(Response<SayHelloResponse> res) {
                try {
                    SayHelloResponse response = res.get();
                    String message = response.getReturn();
                    System.out.println(message);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	@Test
	public void test03(){
		Pager pager = service.getPager(111, 222);
		service.getPagerStrAsync(pager, new AsyncHandler<GetPagerStrResponse>() {
			public void handleResponse(Response<GetPagerStrResponse> res) {
				try {
					String str = res.get().getReturn();
					System.out.println(str);
				} catch (Exception e) {
                    e.printStackTrace();
                }
			}
		});
        try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	@Test
	public void test04() {
		try {
			Hello2WsService service2 = new Hello2WsService_Service()
					.getHello2WsServicePort();
			byte[] bytes = new String("你好").getBytes();
//			Holder<byte[]> image = new Holder<byte[]>(bytes);
			service2.savaPicData2(bytes);
//			if (image.value != null)
//				System.out.println("SOAP 1.1 testEcho() PASSED!");
//			else
//				System.out.println("SOAP 1.1 testEcho() FAILED!");
		} catch (Exception ex) {
			System.out.println("SOAP 1.1 MtomApp FAILED!");
			ex.printStackTrace();
		}
	}
}
