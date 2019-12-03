package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class conversorController
 */
@WebServlet("/convertir")
public class ConversorController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConversorController() {
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
		// TODO Auto-generated method stub

		// Recibir parametros del formulario, siempre formato String
		String metros = request.getParameter("metros");
		
		try {
			
			if ("".equals(metros)) {
				request.setAttribute("mensaje", "Error, inserta un número");
				request.setAttribute("metros", metros);
				
			} else {
				double metrosResultado = Double.parseDouble(metros);
				
				double resultado = metrosResultado * 3.28048;
				
				request.setAttribute("resultado", resultado);
				request.setAttribute("metros", metros);

			}
			
		} catch (NumberFormatException  e) {
			request.setAttribute("mensaje", "Error, inserta un número");
			request.setAttribute("metros", metros);
		} 
			
		
		// Ir a vista
		request.getRequestDispatcher("conversor.jsp").forward(request, response);
	}

}
