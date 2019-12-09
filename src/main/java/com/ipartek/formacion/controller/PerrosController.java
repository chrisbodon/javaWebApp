package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.modelo.pojos.Perro;

/**
 * Servlet implementation class PerrosController
 */
@WebServlet("/perros")
public class PerrosController extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	
    private ArrayList<Perro> perros = new ArrayList<Perro>();
    
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		// Se ejecuta la primera vez que se llama a este servlet, y nunca más.
		super.init(config);
		perros.add( new Perro("bubba") );
		perros.add( new Perro("rataplan") );
		perros.add( new Perro("mosca") );
		perros.add( new Perro("txakur") );
		perros.add( new Perro("lagun") );
		
	}
	
	@Override
	public void destroy() {
		
		// Se ejecuta solo una vez, cuando se para el servidor de aplicaciones.
		super.destroy();
		perros = null;
		
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Se ejecuta antes del doGet o el doPost.
		
		super.service(request, response); // Ejecuta el doGet y el doPost.
		
		// Se ejecuta después del doGet o el doPost.
		
		//listar perros
		request.setAttribute("perros", perros);
		request.getRequestDispatcher("perros.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//listar perros
		
		request.setAttribute("perros", perros);
		request.getRequestDispatcher("perros.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//recibir datos del form
		
		String nombre = request.getParameter("nombre");
		
				
		//crear perro
		Perro p = new Perro();
		p.setNombre(nombre);
		
		//guardar en lista
		perros.add(p);
		
	
	}

}
