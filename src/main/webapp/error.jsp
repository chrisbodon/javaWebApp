<%@ page isErrorPage="true"%>
<%String title = "Error 500"; %>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<h1>Aprende a programar</h1>

<p>Causa <%=exception.getCause() %></p>
<p>Mensaje <%=exception.getMessage() %></p>

<pre>
	<!-- Stack trace -->
	<jsp:scriptlet>
	  exception.printStackTrace(new java.io.PrintWriter(out));
	</jsp:scriptlet>
</pre>

<%@include file="includes/pie.jsp"%>