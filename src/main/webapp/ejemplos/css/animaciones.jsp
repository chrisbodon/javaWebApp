
<%
	String title = "Animaciones";
%>
<%@include file="../../../includes/cabecera.jsp"%>
<%@include file="../../../includes/navegacion.jsp"%>

<h1>Animaciones @Keyframes</h1>

<p>
	La regla arroba
	<code>@keyframes</code>
	permite a los autores controlar los pasos intermedios en una secuencia
	de animaci�n CSS mediante el establecimiento de keyframes (o puntos de
	trayectoria) a lo largo de la secuencia de animaci�n que debe ser
	alcanzado por determinados puntos durante la animaci�n. Esto le da un
	control m�s espec�fico sobre los pasos intermedios de la secuencia de
	animaci�n que se obtiene al dejar que el navegador maneje todo
	autom�ticamente.
</p>

<p>
	Para utilizar keyframes, se crea una regla de&nbsp;<span
		style="font-family: monospace;">@keyframes</span>&nbsp;con un nombre
	que es utilizada por la propiedad <a
		href="/es/docs/Web/CSS/animation-name"
		title="La&nbsp;propiedad&nbsp;CSS animation-name especifica una lista de animaciones que se deben aplicar al elemento seleccionado. Cada nombre indica un&nbsp;@keyframes esta regla define los valores de las propiedades de la secuencia de animaci�n."><code>animation-name</code></a>
	para que coincida con una animaci�n de keyframe a su lista. Cada
	regla&nbsp;<span style="font-family: monospace; line-height: 1.5em;">@keyframes&nbsp;</span><span
		style="line-height: 1.5em;">contiene una lista de estilo de
		selectores de keyframe, cada una de los cuales est� compuesto de un
		porcentaje a lo largo de la animaci�n en la que se produce el keyframe
		as� como un bloque que contiene la informaci�n de estilo para ese
		keyframe.</span>
</p>

<p>Puede listar los keyframes en cualquier orden, �stos ser�n
	tratados en el orden en que los porcentajes especificados indican que
	debe ocurrir.</p>

<img style="animation: move 2s infinite alternate;"
	src="img/logo-ipartek.png" />

<%@include file="../../../includes/pie.jsp"%>