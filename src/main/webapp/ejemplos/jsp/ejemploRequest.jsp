
<%
	String title = "Ejemplos de Request";
%>
<%@include file="../../../includes/cabecera.jsp"%>
<%@include file="../../../includes/navegacion.jsp"%>
<style>
.container {
	width: 80vw;
	margin: auto;
	display: flex;
	flex-flow: row wrap;
	position: relative;
}

.item {
	box-sizing: border-box;
	padding: 15px;
	margin: 15px;
	flex: 0 Calc(50% - 30px);
	border: 1px solid;
}

form {
	padding: 20px;
	color: #0c2661;
}

input, select {
	padding: 5px;
	border: 0px;
	border-bottom: 1px solid #0c2661;
	width: 100%;
	max-width: 200px;
	background-color: transparent;
	text-align: center;
	margin-top: 5px;
	color: #0c2661;
}

select {
	cursor: pointer;
}

input[type="checkbox"] {
	width: auto;
}

input[type="text"]:focus {
	outline: 0px;
}

input[type="text"]:valid {
	color: green;
	border-color: green;
}

input[type="text"]:invalid {
	color: red;
}

form img {
	max-width: 120px;
	border-radius: 60px;
}

button {
	background-color: transparent;
	border: 1px solid #0c2661;
	border-radius: 20px;
	padding: 4px 10px;
	color: #0c2661;
	cursor: pointer;
}
</style>

<h1>Ejemplos de Request</h1>

<p>En los siguientes formularios, accedemos a dos formas de gestionar los atributos a través de los Servlets, con el método GET. En el formulario de la izquierda, la información va al controlador(Servlet) y de ahí se te dirige a un JSP, dependiendo del valor de los atributos. En el otro formulario, la información se envía al controlador, y es el propio controlador, el que maqueta el código JSP correspondiente.</p>

<div class="container">
	<div class="item">
		<h2>SERVLET + JSP maquetados.</h2>
		
		<p><a href="ejemplo2?nombre=pepe&password=12345">Se muestra si se ha accedido con éxito.</a></p>
		<p><a href="ejemplo2?nombre=pepeewfe&password=12we3456">Acceso no permitido</a></p>
		<p><a href="ejemplo2?nombre=tetera">Resultado Tetera</a></p>

		<%
			// Recibir atributos del controlador, siempre se castean
			String nombre = (String) request.getAttribute("nombre");

			if (nombre != null) {
		%>

		<p>
			Bienvenido
			<%=nombre%>, tienes acceso.
		</p>

		<%
			}
		%>

		<form action="ejemplo2" method="GET">

			<p>
				<label for="nombre">Usuario</label> <br> <input type="text"
					name="nombre" id="nombre" autofocus
					placeholder="Mínimo 3 caracteres, máximo 10" pattern=".{3,10}"
					required>
			</p>

			<p>
				<label for="password">Contraseña</label> <br> <input
					type="password" name="password" id="password" pattern=".{5,8}"
					placeholder="Mínimo 5, máximo 8" required>
			</p>


			<button type="submit">Entrar</button>
		</form>
	</div>
	<div class="item">
		<h2>SERVLET que maqueta JSP.</h2>
		
		<p><a href="ejemplo1?nombre2=pepe&password2=12345">Se muestra si se ha accedido con éxito.</a></p>
		<p><a href="ejemplo1?nombre2=pepeewfe&password2=12we3456">Acceso no permitido</a></p>
		<p><a href="ejemplo1?nombre2=tetera">Resultado Tetera</a></p>

		<form action="ejemplo1" method="GET">

			<p>
				<label for="nombre2">Usuario</label> <br> <input type="text"
					name="nombre2" autofocus
					placeholder="Mínimo 3 caracteres, máximo 10" pattern=".{3,10}"
					required>
			</p>

			<p>
				<label for="password2">Contraseña</label> <br> <input
					type="password" name="password2" pattern=".{5,8}"
					placeholder="Mínimo 5, máximo 8" required>
			</p>


			<button type="submit">Entrar</button>
		</form>
	</div>
</div>

<%@include file="../../../includes/pie.jsp"%>