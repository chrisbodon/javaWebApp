<%String title = "Login Deportes con éxito"; %>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>
    
<h1>Resumen Deportes</h1>    
<h2>Bienvenido ${deportista}, tu email es ${email}, eres ${sexo}. Tus deportes favoritos son:</h2>
<p>${deportesSeleccionados}</p>


<%@include file="includes/pie.jsp"%>