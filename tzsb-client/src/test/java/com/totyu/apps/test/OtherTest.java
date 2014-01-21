package com.totyu.apps.test;

import org.junit.Test;

public class OtherTest {
	@Test
	public void test(){
		System.out.println(System.currentTimeMillis() + "--"+ (""+System.currentTimeMillis()).length());
		System.out.println((int)Math.ceil(101f/100));
		System.out.println((int)Math.ceil(100f/100));
		System.out.println((int)Math.ceil(99f/100));
		
		System.out.println((int)Math.ceil(101/100f));
		System.out.println((int)Math.ceil(100/100f));
		System.out.println((int)Math.ceil(99/100f));
	}
}
