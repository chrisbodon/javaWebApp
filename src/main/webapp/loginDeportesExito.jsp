<%String title = "Login Deportes con éxito"; %>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>
    
<h1>Resumen Deportes</h1>    
<h2>Bienvenido ${nombre}, tu email es ${email}, eres <c:if test="${sexo == 'm'}">mujer</c:if><c:if test="${sexo == 'h'}">hombre</c:if><c:if test="${sexo == 'i'}">indefinido</c:if>. Tus deportes favoritos son:</h2>
<p>${deportesSeleccionados}</p>


<%@include file="includes/pie.jsp"%>