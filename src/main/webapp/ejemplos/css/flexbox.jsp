<%@include file="../../../includes/cabecera.jsp"%>
<%@include file="../../../includes/navegacion.jsp"%>
<style>
.container {
	width: 80%;
	margin: auto;
	background-color: gray;
	/* Flexbox */
	display: flex;
	flex-direction: row; /* Por defecto, estructura en líneas. */
	flex-wrap: wrap; /* Permite acomodar los elementos, sin desbordar. */
	justify-content: center; /* Justifica el contenido, centrado o con espacio equivalente, por ejemplo. */
}

.item {
	border: 5px solid #000000;
	padding: 20px;
	margin: 10px;
	background-color: lightgray;
	box-sizing: border-box;

	/* Flexbox */
}
</style>

<h1>Flexbox</h1>

<section>
	<ul>
		<li><a href="https://css-tricks.com/snippets/css/a-guide-to-flexbox/" target="_blank">Guía de Flexbox</a></li>
		<li><a href="https://flexboxfroggy.com/#es" target="_blank">Juego Flexbox</a></li>
		<li><a href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/" target="_blank">Maquetar página web con flebox</a></li>
	</ul>
</section>

<section>
	<p>Flex, es una nueva forma de <code>display</code>. Sirve para distribuir los elementos contenidos en una etiqueta, que contenga este display.</p>
	<img src="img/flex-axes.png">
</section>

<div class="container">
	<div class="item"><span>1</span></div>
	<div class="item"><span>2</span></div>
	<div class="item"><span>3</span></div>
	<div class="item"><span>4</span></div>
	<div class="item"><span>5</span></div>
	<div class="item"><span>6</span></div>
	<div class="item"><span>7</span></div>
	<div class="item"><span>8</span></div>
	<div class="item"><span>9</span></div>
	<div class="item"><span>10</span></div>
	<div class="item"><span>11</span></div>
	<div class="item"><span>12</span></div>
</div>

<%@include file="../../../includes/pie.jsp"%>