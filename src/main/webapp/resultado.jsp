<!DOCTYPE html>
<%@page import="java.lang.invoke.SwitchPoint"%>
<html>

<head>
<meta charset="utf-8">
<meta name="description" content="Prueba Técnica">
<meta name="author" content="Cristian Bodón">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,
                maximum-scale=1.0, user-scalable=no" />
<meta content="Prueba Técnica" name="keywords" />
<link rel="shortcut icon" type="image/png" href="img/Favicon.jpg" />

<!-- La base para construir todas las etiquetas de la página. -->
<!-- <base href="/pruebaTecnica/"> -->

<!-- CSS -->
<link href="css/main.css" rel="stylesheet">

<title>Ipartek</title>
</head>

<body>
	<div class="intro">
		<img src="img/logo-ipartek.png" class="logo" />
	</div>

	<h1>Resultado</h1>

	<%
		// Recibir atributos del controlador
		String mensaje = (String) request.getAttribute("mensaje");
		String simbolo = (String) request.getAttribute("simbolo");
		String op1 = (String) request.getAttribute("op1");
		String op2 = (String) request.getAttribute("op2");
		float resultado = (float) request.getAttribute("resultado");

		if (mensaje != null) {
	%>

	<p style="color: red;"><%=mensaje%></p>

	<%
		} else {
	%>

	<p>
		El resultado
		<%=op1%>
		<%=simbolo%>
		<%=op2%>
		=
		<%=resultado%></p>

	<%
		} // Final del if
	%>
	<a href="calculadora.jsp">Volver a Calcular</a>

	<script src="js/main.js"></script>
</body>

</html>