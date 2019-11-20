<%@include file="../../../includes/cabecera.jsp"%>
<%@include file="../../../includes/navegacion.jsp"%>
<style>
form {
	border: 1px solid #cccccc;
	padding: 20px;
}

input[type="text"] {
	padding: 2px 0 2px 5px;
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
</style>


<h1>Formulario</h1>

<p>
	Se utiliza la etiqueta
	<code>form</code>
	, y se envia con un
	<code>input</code>
	de
	<code>type="submit"</code>
	.
</p>
<p>
	El
	<code>action</code>
	, especifica el controlador del servidor.
</p>
<p>
	El
	<code>name</code>
	del
	<code>input</code>
	sirve para especificar el nombre del parámetro, para enviar al
	servidor.
</p>

<form action="#" method="POST">

	<fieldset>
		<legend>Datos Personales</legend>

		<p>
			<label for="username">Nombre: </label> <input type="text"
				name="username" id="username" autofocus
				placeholder="Mínimo 3 caracteres, máximo 10" pattern=".{3,10}"
				required>
		</p>

		<p>
			<label for="age">Edad: </label> <input type="number" name="age"
				id="age" min="0" max="99" placeholder="Número de años 0-99" required>
		</p>
	</fieldset>

	<p>
		<label for="gender">Género</label> <select>
			<option value="h">Hombre</option>
			<option value="m">Mujer</option>
			<option value="se" selected>Sin especificar</option>
		</select>
	</p>

	<p>
		<label for="sports">Deportes: </label> <br> <input
			type="checkbox" name="sports" value="1"> Surf <br> <input
			type="checkbox" name="sports" value="2" checked> Quidditch <br>
		<input type="checkbox" name="sports" value="3"> Jugger <br>
		<input type="checkbox" name="sports" value="4"> Petanca
	</p>

	<p>
		<label for="occupation">Ocupación</label> <br> <input
			type="radio" name="occupation" value="0"> Trabajando <br>
		<input type="radio" name="occupation" value="1"> Desempleado
	</p>

	<p>
		<label for="observations">Observaciones: </label> <br>
		<textarea name="observations" id="observations" cols="50" rows="10"
			placeholder="Tu opinión es importante" required></textarea>
	</p>

	<p>
		<label for="password">Contraseña: </label> <input type="password"
			name="password" id="password" pattern=".{5,8}"
			placeholder="Mínimo 5, máximo 8" required>
		<button onclick="viewText()">Ver</button>
	</p>

	<input type="submit" value="Enviar">
</form>

<%@include file="../../../includes/pie.jsp"%>