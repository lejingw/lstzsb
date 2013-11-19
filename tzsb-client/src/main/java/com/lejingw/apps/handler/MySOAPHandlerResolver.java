package com.lejingw.apps.handler;

import java.util.ArrayList;
import java.util.List;

import javax.xml.ws.handler.Handler;
import javax.xml.ws.handler.HandlerResolver;
import javax.xml.ws.handler.PortInfo;

import org.springframework.stereotype.Service;

@Service("mySOAPHandlerResolver")
@SuppressWarnings("rawtypes")
public class MySOAPHandlerResolver implements HandlerResolver {
	private List<Handler> handlerList;
	
	public MySOAPHandlerResolver(){
		handlerList = new ArrayList<Handler>();
		handlerList.add(new LicenseInfoHandler());
	}

	@Override
	public List<Handler> getHandlerChain(PortInfo portInfo) {
		return handlerList;
	}

}
