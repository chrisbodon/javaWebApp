package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController
 * 
 * Ejemplo para aprender cómo recibir peticiones del cliente, y responderle solo usando SERVLET.
 * @see HelloController2 para ver que hace lo mismo pero con SERVLET + JSP.
 * 
 */
@WebServlet("/ejemplo1")
public class HelloController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String USUARIO = "pepe";
	private static final String PASSWORD = "12345";
	private static final String TETERA = "tetera";
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userAgent = request.getHeader("User-Agent");
		
		String http = request.getProtocol();
		
		String nombre2 = request.getParameter("nombre2");
		String password2 = request.getParameter("password2");

		// Respuesta
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		if (USUARIO.equals(nombre2) && PASSWORD.equals(password2)) {
			
			// Por defecto
			response.setStatus(200);

			out.print("<html lang=\"es\">");
			out.print("<head>");
			out.print("<meta charset=\"utf-8\">");
			out.print("<title>Título del sitio</title>");
			out.print("</head>");
			out.print("<body>");
			out.print("<h1>Página de ejemplo1</h1>");
			out.print("<ol>");
			out.print("<li>Versión HTTP: " + http + "</li>");
			out.print("<li>Tu navegador es: " + userAgent + "</li>");
			out.print("<li>Nombre: " + nombre2 + "</li>");
			out.print("</ol>");
			out.print("</body>");
			out.print("</html>");
			
		} else {
			
			if (TETERA.equals(nombre2)) {
				response.setStatus(418);
				out.print("<h1>Eres una tetera</h1>");
				
			} else {
				// No autorizado
				response.setStatus(401);
				out.print("<h1>No autorizado</h1>");
				
			}
		}
		
		out.flush();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
