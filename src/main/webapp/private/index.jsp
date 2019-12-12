<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String title = "Usuario";
%>
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

<!-- <meta http-equiv="refresh" content="5"> -->

<p>BackOffice</p>
<p style="color:red">Solo pueden acceder usuarios logeados</p>
<p>Atributo desde servlet => ${atributoDesdeServlet}</p>


<p>Usuarios logeados: <b>${applicationScope.numeroUsuariosConectados}</b> </p>
<p>Numero de intentos de acceso indebidos: <b>${applicationScope.numeroUsuariosIndebidos}</b> </p>

<ol>
	<h3>IPs sin repetir de accesos indebidos:</h3>
	<c:forEach items="${applicationScope.ips}" var="ip">
		<li>${ip}</li>
	</c:forEach>
</ol>

<%@include file="../../includes/pie.jsp"%>
