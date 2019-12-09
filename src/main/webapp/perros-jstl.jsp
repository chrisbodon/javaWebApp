<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String title = "Perros JSTL";
%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<h1>Perros JSTL</h1>
<p>Mismo ejemplo para hacer un CRUD pero usando taglibs.</p>

<h2>Tenemos ${fn:length(perros)} perros en adopción.</h2>

<!-- Solo con IFs -->

<!--

<c:if test="${not empty mensaje}">
	<h3>${mensaje}</h3>
</c:if>

<c:if test="${empty mensaje}">
	<h3>No tenemos mensaje</h3>
</c:if>

-->

<!-- IF con ELSE -->

<c:choose>
    <c:when test="${not empty mensaje}">
		<h3>${mensaje}</h3>
    </c:when>    
    <c:otherwise>
		<h3>No tenemos mensaje</h3>
    </c:otherwise>
</c:choose>

<ul>
	<c:forEach items="${perros}" var="p">
		<li>
			<img src="${p.foto}" style="border-radius:100px; max-height: 100px;">
			<p>${p.id} - ${p.nombre}</p>
			<p><a href="perros?id=${p.id}&adoptar=s">Adoptar</a> <a href="perros?id=${p.id}&editar=s">Modificar</a></p>
		</li>
	</c:forEach>
</ul>

<c:if test="${empty perroEditar}">
	<h3>No tenemos perro para editar, así que creamos uno: </h3>
	<jsp:useBean id="perroEditar" class="com.ipartek.formacion.modelo.pojos.Perro">
		
	</jsp:useBean>
</c:if>

<p>Foto = ${perroEditar.foto}</p>
<p>Nombre = ${perroEditar.nombre}</p>

<%@include file="includes/pie.jsp" %>