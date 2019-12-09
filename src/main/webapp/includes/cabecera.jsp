<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="description" content="Maven Server">
<meta name="author" content="Cristian Bodón">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,
                maximum-scale=1.0, user-scalable=no" />
<meta content="Ipartek Java Web Project" name="keywords" />
<link rel="shortcut icon" type="image/png" href="img/Favicon.jpg" />

<!-- La base para construir todas las etiquetas de la página. -->
<base href="/helloWeb/">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">

<!-- Datatables -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" />

<script src="https://code.jquery.com/jquery-3.3.1.js" rel="stylesheet"></script>

<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						$('.styledTable')
								.addClass('nowrap')
								.dataTable(
										{
											responsive : true,
											language : {
												"sProcessing" : "Procesando...",
												"sLengthMenu" : "Mostrar _MENU_ registros",
												"sZeroRecords" : "No se encontraron resultados",
												"sEmptyTable" : "Ningún dato disponible en esta tabla =(",
												"sInfo" : "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
												"sInfoEmpty" : "Mostrando registros del 0 al 0 de un total de 0 registros",
												"sInfoFiltered" : "(filtrado de un total de _MAX_ registros)",
												"sInfoPostFix" : "",
												"sSearch" : "Buscar:",
												"sUrl" : "",
												"sInfoThousands" : ",",
												"sLoadingRecords" : "Cargando...",
												"oPaginate" : {
													"sFirst" : "Primero",
													"sLast" : "Último",
													"sNext" : "Siguiente",
													"sPrevious" : "Anterior"
												},
												"oAria" : {
													"sSortAscending" : ": Activar para ordenar la columna de manera ascendente",
													"sSortDescending" : ": Activar para ordenar la columna de manera descendente"
												},
												"buttons" : {
													"copy" : "Copiar",
													"colvis" : "Visibilidad"
												}
											},
											columnDefs : [ {
												targets : [ -1, -3 ],
												className : 'dt-body-right'
											} ]
										});
					});
</script>

<!-- CSS -->
<link href="css/font-awesome/all.css" rel="stylesheet">
<link href="css/main.css?time=<%=System.currentTimeMillis()%>"
	rel="stylesheet">
	<base href="helloweb/">

<title>Ipartek | <%=title%></title>

</head>

<body id="top">
	<a href="#top" id="toTop"> <span class="fas fa-arrow-circle-up"></span></a>

	<div class="intro">
		<img src="img/logo-ipartek.png" class="logo" />
	</div>