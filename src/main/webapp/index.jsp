<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>
<style>
.btn-hover {
	width: 200px;
	background-image: linear-gradient(to right, #25aae1, #72c7dc, #72c7dc, #72c7dc);
	box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
	font-size: 20px;
	font-weight: 600;
	color: #fff;
	cursor: pointer;
	margin: 20px;
	padding: 20px;
	text-align: center;
	border: none;
	background-size: 300% 100%;
	border-radius: 50px;
	moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

.btn-hover:hover {
	background-position: 100% 0;
	moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

.btn-hover:focus {
	outline: none;
}
</style>
<h1>
	Ipartek HTML5 <span class="fas fa-american-sign-language-interpreting"></span>
</h1>

<a target="_blank" href="">Documentación de tablas.</a>
<h2>Tabla</h2>

<table class="styledTable display">
	<thead>
		<tr>
			<th>Fila 1</th>
			<th>Fila 2</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Aitor</td>
			<td></td>
		</tr>
		<tr>
			<td>Endika</td>
			<td>Iker</td>
		</tr>
		<tr>
			<td>Íñigo</td>
			<td>Kiryl</td>
		</tr>
		<tr>
			<td>Juan Carlos</td>
			<td>María</td>
		</tr>
		<tr>
			<td>Alejandro</td>
			<td>Ana</td>
		</tr>
		<tr>
			<td>Cristian</td>
			<td>Erlantz</td>
		</tr>
		<tr>
			<td>Raúl</td>
			<td>X</td>
		</tr>
		<tr>
			<td>Joseba</td>
			<td>Mikel</td>
		</tr>
		<tr>
			<td colspan="2">Ander</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<th>Fila 1</th>
			<th>Fila 2</th>
		</tr>
	</tfoot>
</table>

<a href="javascript:void(0)" class="btn-hover"
	onclick="selectVolunteer()">¿Quién lee?</a>
<h2 id="volunteer">Voluntari@</h2>
<audio id="audio" src="media/final-fantasy-vii-victory-fanfare-1.mp3"></audio>

<h2>Apuntes</h2>

<h3>URL´s</h3>
<p>Si una URL empieza por barra, es relativa al servidor, obviando
	la base y la carpeta en la que se encuentra.</p>

<%@include file="includes/pie.jsp"%>