<%String title = "Resultado"; %>
<%@page import="java.lang.invoke.SwitchPoint"%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>
	<h1>Resultado</h1>

	<%
		// Recibir atributos del controlador
		String mensaje = (String) request.getAttribute("mensaje");
		String simbolo = (String) request.getAttribute("simbolo");
		String op1 = (String) request.getAttribute("op1");
		String op2 = (String) request.getAttribute("op2");
		float resultado = (float) request.getAttribute("resultado");

		if (mensaje != null) {
	%>

	<p style="color: red;"><%=mensaje%></p>

	<%
		} else {
	%>

	<p>
		El resultado
		<%=op1%>
		<%=simbolo%>
		<%=op2%>
		=
		<%=resultado%></p>

	<%
		} // Final del if
	%>
	
<%@include file="includes/pie.jsp"%>