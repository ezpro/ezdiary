package com.serv;

public class LackParamsException extends RuntimeException {

	/**
	 * 当servlet的基类
	 * 
	 */
	private static final long serialVersionUID = -8938540235401436481L;
	public LackParamsException(String param){
		super("Lack:" + param);
	}

}
