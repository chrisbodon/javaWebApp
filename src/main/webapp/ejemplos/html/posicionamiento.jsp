<%@include file="../../../includes/cabecera.jsp"%>
<%@include file="../../../includes/navegacion.jsp"%>

<style>
p {
	color: teal;
	border: 5px solid green;
	margin: 5px 20px;
	padding: 0px 10px 20px 30px;
}

p span {
	border: 3px dotted red;
	padding: 10px;
}

.box {
	box-sizing: border-box;
	display: inline-block;
	width: 100px;
	height: 100px;
	border: 2px solid teal;
	background-color: royalblue;
	border-radius: 10px;
	font-size: 5em;
	text-align: center;
}

.box-texto {
	display: inline-block;
	width: 100px;
	height: 100px;
	border: 2px solid #000000;
}
</style>

<h1>Posicionamiento</h1>

<section>
	<h2>Relativo</h2>
</section>

<section>
	<h2>Fixed</h2>
</section>

<section>
	<h2>Absoluto</h2>
</section>

<section>
	<h2>Sticky</h2>
</section>

<%@include file="../../../includes/pie.jsp"%>