package controlador;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.RequestDispatcher;

import modelo.Intento;

/**
 * Servlet implementation class Control
 */
@WebServlet("/Control")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int op1; 
    /**
     * Default constructor. 
     */
    public Control() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest re, HttpServletResponse response) throws ServletException, IOException {
		
		Intento intent=new Intento();	
		//int op1=0;
	//--------------------------------------------------------------
	try {
		if(re.getParameter("num1") == null)
		{
	     String op = "2";
	     
		}
		else
		{
	     String op = re.getParameter("num1");
	      op1=Integer.parseInt(op);
		}
	} catch(NumberFormatException e) {
		System.out.print("Caught NumberFormatException");
	}finally {
		//op1=Integer.parseInt(op);
	}										//TRY CATCH MALO
	//-------------------------------------------------------------------------------
	
	
	
	//CREAMOS LA SESION Y METEMOS ARRAY(intentos) EN SESION
	HttpSession sesion=re.getSession(true);
	
	ArrayList<Intento> intentos = (ArrayList<Intento>)sesion.getAttribute("intentosArray");
	
	if (sesion.getAttribute("intentosArray") == null) {
				
		intentos = new ArrayList<Intento>();
		
		sesion.setAttribute("intentosArray", intentos);
	}
	//sesion.setAttribute("intentosArray", intentos);
	
	
	String texto="";
	int numero=20;
	
if(op1<20) {
		
		texto="El numero INVISIBLE es MAYOR";
		
	}else if(op1>20){
		
		texto="El numero INVISIBLE es MENOR";
		
	}
	
	int orden = intentos.size();
	intent.setNumeroJugado(op1);
	intent.setFechaHora(LocalDateTime.now());
	intent.setOrden(orden);
	intent.setMensaje(texto);
	
	intentos.add(intent);
	
	
	
	//re.setAttribute("intent", intent);
	
	
	
	String base = "/jsp/";
	String url = base + "index.jsp";
	String action="";
	
	
	if(intent.getNumeroJugado()==20){
		url="/jsp/Correcto.jsp";
		sesion.invalidate();
	}
			
	RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
	requestDispatcher.forward(re, response);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
