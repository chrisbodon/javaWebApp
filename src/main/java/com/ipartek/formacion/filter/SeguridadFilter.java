package com.ipartek.formacion.filter;

import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.ipartek.formacion.controller.PerrosController;

/**
 * Servlet Filter implementation class SeguridadFilter
 */
@WebFilter("/SeguridadFilter")
public class SeguridadFilter implements Filter {
	
	private final static Logger LOG = Logger.getLogger(PerrosController.class);
	
	private Set<String> ips = new HashSet<String>();

    /**
     * Default constructor. 
     */
    public SeguridadFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		LOG.trace("Destroy");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;

		LOG.debug("RequestURL " + req.getRequestURL());
		LOG.debug("RequestURI " + req.getRequestURI());
		LOG.debug("HTTP Protocol " + req.getProtocol());
		LOG.debug("HTTP RemoteAddr " + req.getRemoteAddr());
		LOG.debug("HTTP RemoteHost " + req.getRemoteHost());
		LOG.debug("Navegador " + req.getHeader("User-Agent"));
		
		Map parametrosMap = req.getParameterMap();
		
		HttpSession session = req.getSession();
		
		if ( session.getAttribute("usuarioLogeado") == null) {
			
			LOG.warn("Intentan entrar sin logearse");
			//ips.addAll(req.getRequestURL());
			
			
		}

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		LOG.trace("Init");
	}

}