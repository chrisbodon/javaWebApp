<%@page import="com.ipartek.formacion.modelo.pojos.Perro"%>
<%@page import="java.util.ArrayList"%>
<%
	String title = "Perros";
%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>


<h1>Perros</h1>

<%
	String mensaje = (String)request.getAttribute("mensaje");

%>

<p style="color:teal; font-size:2em;"><%=mensaje%></p>

<%
	
	ArrayList<Perro> perros = (ArrayList<Perro>)request.getAttribute("perros");

%>

<!-- Listado -->
	<table class="styledTable display">
        <thead>
            <tr>
                <th>Imagen</th>
                <th>ID</th>
                <th>Nombre</th>
                <th>Opciones</th>
            </tr>
        </thead>
        <tbody>
		<% for ( Perro p :  perros ) { %>
            <tr>
                <td><img src="<%=p.getFoto()%>" style="border-radius:100px; max-height: 100px;" alt="foto alterntiva del perro"></td>
                <td><%=p.getId()%></td>
                <td><%=p.getNombre()%></td>
                <td><a href="perros?id=<%=p.getId()%>&adoptar=s">Adoptar</a> <a href="perros?id=<%=p.getId()%>&editar=s">Modificar</a></td>
            </tr>
		<% } %>
        </tbody>
        <tfoot>
            <tr>
                <th>Imagen</th>
                <th>ID</th>
                <th>Nombre</th>
                <th>Opciones</th>
            </tr>
        </tfoot>
    </table>

<hr>

<!-- Formulario -->

<%
	Perro perroEditar = (Perro)request.getAttribute("perroEditar");
	if ( perroEditar == null ){
		perroEditar = new Perro();
	}
%>

<form action="perros" method="post">
	
	<input type="text" readonly name="id" required value="<%=perroEditar.getId()%>">
	<br>
		
	<input type="text" name="nombre" placeholder="nombre del bicho" value="<%=perroEditar.getNombre()%>" required>	
	<br>
	
	<input type="text" name="imagen" placeholder="url de la imagen" value="<%=perroEditar.getFoto()%>" required>
	<br>
	
	<input type="submit" value="Dar de Alta">
</form>


<%@include file="includes/pie.jsp" %>