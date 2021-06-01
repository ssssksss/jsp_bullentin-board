package com.coin666.jbb;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import doContorller.DoUserLogin;
import doContorller.UserSearchController;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Controller> list = null;   
	
    public FrontController() {
        super();
    }
    @Override
    public void init(ServletConfig config) throws ServletException { 
    	list = new HashMap<String, Controller>();
    	
        list.put("userlogin.do",new DoUserLogin());
        list.put("home.do",new UserSearchController());
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doaction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doaction(request,response);
	}
	public void doaction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
        String conPath = request.getContextPath();
        String command = uri.substring(conPath.length()+1);
        
        //ex) home.do 와 같이 나옴
        System.out.println(command);
        
        Controller subController = list.get(command);
        subController.execute(request, response);
	}
}
