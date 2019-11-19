package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		if ("admin".equalsIgnoreCase(nombre) && "admin".equalsIgnoreCase(contrasena)) {

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
			vista = "loginExito.jsp";
			

		} else {
			request.setAttribute("mensaje", "Credenciales <b>INCORRECTAS</b>. Por favor, prueba de nuevo.");
			vista = "login.jsp";
		}
		
		// Ir a vista
		request.getRequestDispatcher(vista).forward(request, response);
	}

}
