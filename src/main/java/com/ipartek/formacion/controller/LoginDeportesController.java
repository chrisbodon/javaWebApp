package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.ipartek.formacion.listener.AppListener;

/**
 * Servlet implementation class LoginDeportesController
 */
@WebServlet("/loginDeportes")
public class LoginDeportesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final static Logger LOG = Logger.getLogger(AppListener.class);
       
	private static final String USUARIO = "deportista";
	private static final String PASSWORD = "deportista";


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
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		String deportes[] = request.getParameterValues("deportes");
		
		String mensaje = "";
		
		// Lógica
		try {
			if (USUARIO.equalsIgnoreCase(nombre) && PASSWORD.equalsIgnoreCase(contrasena) && deportes != null && deportes.length >= 3) {
				
				HashMap<String, String> hmDeportes = (HashMap<String, String>)request.getServletContext().getAttribute("deportes");
				ArrayList<String> deportesSeleccionados = new ArrayList<String>();
				for (String deporteKey : deportes) {					
					deportesSeleccionados.add( hmDeportes.get(deporteKey) );
				}
				
				request.setAttribute("deportesSeleccionados", deportesSeleccionados);
				request.setAttribute("mensaje", mensaje);
				request.setAttribute("nombre", nombre);
				request.setAttribute("email", email);
				request.setAttribute("sexo", sexo);
				
				vista = "loginDeportesExito.jsp";
				//vista = "private/home";
				

			} else {

				request.setAttribute("nombre", nombre);
				request.setAttribute("email", email);
				request.setAttribute("sexo", sexo);
				request.setAttribute("deportesMarcados", Arrays.toString(deportes) );
				
				if (!USUARIO.equalsIgnoreCase(nombre) || !PASSWORD.equalsIgnoreCase(contrasena)) {
					request.setAttribute("mensaje", "Credenciales <b>INCORRECTAS</b>. Por favor, prueba de nuevo.");
					
				}
				
				if (deportes == null || deportes.length < 3) {
					request.setAttribute("mensaje", "Selecciona almenos 3 deportes");
					
				}
				
				vista = "login-deportes.jsp";
			}
			
			// Ir a vista
			request.getRequestDispatcher(vista).forward(request, response);
			
		} catch (Exception e) {
			LOG.error(e);
			request.getRequestDispatcher("error.jsp").forward(request, response);
			
		}
		
	}

}
