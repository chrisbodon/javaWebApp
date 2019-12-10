package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BackOfficeController
 */
@WebServlet("/private")
public class BackOfficeController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private static final String USUARIO = "admin";
	private static final String PASSWORD = "admin";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vista;
		
		// Recibir parametros del formulario, siempre formato String
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");

		// Lógica
		if (USUARIO.equalsIgnoreCase(nombre) && PASSWORD.equalsIgnoreCase(contrasena)) {
			
			// Recuperar session del usuario == browser
			HttpSession session = request.getSession();
			session.setAttribute("usuarioLogeado", nombre);
			session.setMaxInactiveInterval(-1); // Nunca caduca
			
			
			
			String mensaje = "";

			request.setAttribute("mensaje", mensaje);
			request.setAttribute("nombre", nombre);
			vista = "loginExito.jsp";
			

		} else {
			request.setAttribute("mensaje", "Credenciales <b>INCORRECTAS</b>. Por favor, prueba de nuevo.");
			vista = "login.jsp";
		}
		
		// Ir a vista
		request.getRequestDispatcher(vista).forward(request, response);
	}

}
