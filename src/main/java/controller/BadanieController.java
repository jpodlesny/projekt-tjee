package controller;

import dao.DostepBaza;
import model.Badanie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BadanieController
 */

public class BadanieController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private static String START = "/start.jsp";
	private static String WSZYSTKIE_BADANIA = "/wszystkieBadania.jsp";
	private static String DODAJ_EDYTUJ = "/dodEdytBadanie.jsp";
	
	private DostepBaza dao;
	
	
    public BadanieController() {
        super();
        dao = new DostepBaza();
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String forward="";
        String action = request.getParameter("action");
        
        if(action.equalsIgnoreCase("start")) {
        	forward = START;
        }
        else if (action.equalsIgnoreCase("wszystkieBadania")) {
        	forward = WSZYSTKIE_BADANIA;
            request.setAttribute("badania", dao.pobierzWszystkie());
        } else if(action.equalsIgnoreCase("delete")) {
            forward = WSZYSTKIE_BADANIA;
        	String nazwa = request.getParameter("nazwa");
            dao.usunBadanie(nazwa);
            request.setAttribute("badania", dao.pobierzWszystkie());
        } else if(action.equalsIgnoreCase("edit")) {
            forward = DODAJ_EDYTUJ;
            String nazwa = request.getParameter("nazwa");
            Badanie Badanie = dao.poTypieBadania(nazwa);
            request.setAttribute("badanie", Badanie);             
        } else {
            forward = DODAJ_EDYTUJ;
        }
        
		RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Badanie badanie = new Badanie();

        badanie.setNazwa(request.getParameter("nazwa"));
        badanie.setOpis(request.getParameter("opis"));
        
       try {
    	int koszt = Integer.parseInt(request.getParameter("koszt"));
    	badanie.setKoszt(koszt);
       } catch (Exception e) {
    	   e.printStackTrace();
       }
        
       String nazwa = request.getParameter("nazwa");
       
       if(nazwa == null || nazwa.isEmpty()){
           
           dao.add(badanie);
           
           } else {
           	
           	dao.usunBadanie(nazwa);
           	dao.add(badanie);
           	
           }
           
        RequestDispatcher view = request.getRequestDispatcher(WSZYSTKIE_BADANIA);       
        request.setAttribute("badania", dao.pobierzWszystkie());
        view.forward(request, response);
        
	}

}
