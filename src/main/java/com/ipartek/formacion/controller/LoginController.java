package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipartek.formacion.modelo.pojos.Usuario;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String USUARIO = "admin";
	private static final String PASSWORD = "admin";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String vista;
		
		// Recibir parametros del formulario, siempre formato String
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");
		String idioma = request.getParameter("idioma");
		String recuerdame = request.getParameter("recuerdame");

		// Lógica
		if (USUARIO.equalsIgnoreCase(nombre) && PASSWORD.equalsIgnoreCase(contrasena)) {
			
			// Recuperar session del usuario == browser
			HttpSession session = request.getSession();
			session.setAttribute("usuarioLogeado", nombre);
			session.setAttribute("idioma", idioma);
			session.setMaxInactiveInterval(-1); // Nunca caduca
			
			
			
			String mensaje = "";
			switch (idioma) {
			case "es":
				if (recuerdame == null) {
					mensaje = "Bienvenido";
					
				} else {
					mensaje = "Bienvenido, tu sesión será recordada";
					
				}
				break;
			case "en":
				if (recuerdame == null) {
					mensaje = "Welcome";
					
				} else {
					mensaje = "Welcome, your session its going to be remembered";
					
				}
				break;
			case "eu":
				if (recuerdame == null) {
					mensaje = "Ongi etarri";
					
				} else {
					mensaje = "Ongi etarri, recordatzen bai";
					
				}
				break;
			}

			request.setAttribute("mensaje", mensaje);
			request.setAttribute("nombre", nombre);
			
			//vista = "loginExito.jsp";
			//vista = "private/home";
			String base = request.getContextPath();
			response.sendRedirect(base + "/private/home");
			

		} else {
			request.setAttribute("mensaje", "Credenciales <b>INCORRECTAS</b>. Por favor, prueba de nuevo.");
			
			vista = "login.jsp";
			
			// Ir a vista
			request.getRequestDispatcher(vista).forward(request, response);
		}
		
	}

}
