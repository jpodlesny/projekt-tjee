package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cennik extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private static String CENNIK = "/cennik.jsp";
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String forward="";
        String action = request.getParameter("action");
		
        if(action.equalsIgnoreCase("przyklad")) {
        	forward = CENNIK;
        } else {
        	System.out.println("TEST");
        }

		RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
        
	}
	
	
}
