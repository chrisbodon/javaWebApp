<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String title = "Usuario";
%>
<%@include file="../../includes/cabecera.jsp"%>
<%@include file="../../includes/navegacion.jsp"%>

<h1>Backoffice</h1>
<p>Solo usuarios logeados</p>

${atributoDesdeServlet}

<%@include file="../../includes/pie.jsp"%>
