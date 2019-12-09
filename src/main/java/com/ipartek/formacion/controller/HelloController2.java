package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController2
 * 
 * Vamos a realizar el mismo ejercicio, pero con una JSP para la response
 * automática.
 * 
 * @see HelloController1 para ver cómo recibir peticiones del cliente, y
 *      responderle solo usando SERVLET.
 * 
 */
@WebServlet("/ejemplo2")
public class HelloController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String USUARIO = "pepe";
	private static final String PASSWORD = "12345";
	private static final String TETERA = "tetera";
	private static final String VISTA_RESUMEN = "ejemplos/jsp/ejemploRequest.jsp";
	private static final String VISTA_NO_PERMITIDO = "ejemplos/jsp/no-permitido.jsp";
	private static final String VISTA_TETERA = "ejemplos/jsp/tetera.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		
		if (USUARIO.equals(nombre) && PASSWORD.equals(password)) {
			// Autorizado
			
			// Por defecto
			response.setStatus(200);
			
			// Enviamos parámetros
			request.setAttribute("nombre", nombre);
			
			// Ir a vista
			request.getRequestDispatcher(VISTA_RESUMEN).forward(request, response);
			
		} else {
			
			if (TETERA.equals(nombre)) {
				// Tetera
				
				// Por defecto
				response.setStatus(200);
				
				// Ir a vista
				request.getRequestDispatcher(VISTA_TETERA).forward(request, response);
				
			} else {
				// No autorizado
				
				// Por defecto
				response.setStatus(200);
				
				// Ir a vista
				request.getRequestDispatcher(VISTA_NO_PERMITIDO).forward(request, response);
				
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
