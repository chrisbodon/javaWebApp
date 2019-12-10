package com.ipartek.formacion.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;

/**
 * Application Lifecycle Listener implementation class ContadorSesionesListener
 *
 */
@WebListener
public class ContadorSesionesListener implements HttpSessionAttributeListener, HttpSessionListener {

	private final static Logger LOG = Logger.getLogger(ContadorSesionesListener.class);

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent event) {

		LOG.debug("attributeAdded " + event.getName() + " " + event.getValue());

		// Recuperar los usuarios del ámbito de sesión, y añadir el nuevo usuario.
		// ServletContext = applicationScope en la JSP
		if ("usuarioLogeado".equals(event.getName())) {
			ServletContext sc = event.getSession().getServletContext();
			int numeroUsuarios = (int) (sc.getAttribute("numeroUsuariosConectados"));
			numeroUsuarios++;
			sc.setAttribute("numeroUsuariosConectados", numeroUsuarios);

		}

	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent event) {

		LOG.debug("attributeAdded " + event.getName() + " " + event.getValue());

		// Recuperar los usuarios del ámbito de sesión, y añadir el nuevo usuario.
		// ServletContext = applicationScope en la JSP
		if ("usuarioLogeado".equals(event.getName())) {
			ServletContext sc = event.getSession().getServletContext();
			int numeroUsuarios = (int) (sc.getAttribute("numeroUsuariosConectados"));
			numeroUsuarios--;
			sc.setAttribute("numeroUsuariosConectados", numeroUsuarios);

		}
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent event) {

		LOG.debug("attributeAdded " + event.getName() + " " + event.getValue());

	}

	@Override
	public void sessionCreated(HttpSessionEvent se) {

		LOG.debug("sessionCreated ");

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {

		LOG.debug("sessionDestroyed ");

	}

}
