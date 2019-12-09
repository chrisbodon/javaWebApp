

<%@page import="com.ipartek.formacion.modelo.pojos.Usuario"%>
<%@page import="java.util.ArrayList"%>
<div id="menu" class="navbar">
	<a href="javascript:void(0);" onclick="collapse()"><span class="fa fa-power-off"></span></a>
	<ul id="navbar-menu" class="navbar-elements">
		<li><a href="index.jsp">Principal</a></li>
		<li><a href="ejemplos/howTos/top-menu-responsive.jsp">Top Menu Navbar</a></li>
		<li><a href="ejemplos/js/datatable.jsp">Datatable</a></li>
		<li><a href="ejemplos/css/media-queries.jsp">@media</a></li>
		<li><a href="ejemplos/css/flexbox.jsp">Flexbox</a></li>
		<li><a href="ejemplos/css/animaciones.jsp">Animación</a></li>
		<li><a href="ejemplos/css/basics.jsp">Básicos</a></li>
		<li><a href="ejemplos/css/selectores-introduccion.jsp">Selectores</a></li>
		<li><a href="ejemplos/html/box-model.jsp">Box Model</a></li>
		<li><a href="ejemplos/html/game.jsp">Arkanoid</a></li>
		<li><a href="ejemplos/html/posicionamiento.jsp">Posicionamiento</a></li>
		<li><a href="ejemplos/css/flexbox.jsp">Flexbox</a></li>
		<li><a href="calculadora.jsp">Calculadora</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="conversor.jsp">Conversor</a></li>
		<li><a href="ejemplos/jsp/ejemploRequest.jsp">Ejemplos de Request</a></li>
		<li><a href="perros">Añadir Perros</a></li>
	</ul>
</div>

<div id="usuario">
<%
	
	ArrayList<Usuario> usuarios = (ArrayList<Usuario>)request.getAttribute("usuarios");

%>
<%
	String usuario = (String) session.getAttribute("usuarioLogeado");
	String idioma = (String) session.getAttribute("idioma");
	
	if (usuario == null) {
%>

	<p>Por favor, <a href="login.jsp">inicia sesión</a></p>

<%
	} else {
%>

	<p><%=usuario%>, Idioma: <%=idioma%>, <a href="logout">cerrar sesión</a></p>

<%
	}
%>
</div>

<main>