package com.serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EZServlet
 */
public class EZServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EZServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public void checkParam( HttpServletRequest request,String... params){
		for (String param:params){
			String p = request.getParameter(param);
			if (p == null){
				throw new LackParamsException(param);
			}
		}
	}
	
	public void include(String path,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.getServletContext().getRequestDispatcher("path").include(request, response);
	}
	
	public void forward(String path,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		this.getServletContext().getRequestDispatcher(path).forward(request, response);
	}

}
