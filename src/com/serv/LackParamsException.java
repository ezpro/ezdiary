package com.serv;

public class LackParamsException extends RuntimeException {

	/**
	 * 当servlet的基类调用checkParam方法检测request中的请求参数时，发现
	 * 没有指定的参数时抛出的异常，异常信息中包括缺少参数的名称
	 * 
	 */
	private static final long serialVersionUID = -8938540235401436481L;
	public LackParamsException(String param){
		super("Lack:" + param);
	}

}
