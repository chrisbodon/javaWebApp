<%String title = "Posicionamiento"; %>
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

<ul>
 <li>Un <strong>elemento posicionado </strong>es un elemento cuyo valor&nbsp;<a href="/en-US/docs/CSS/computed_value" title="CSS/computed_value">computado</a> de <code>position</code> es <code>relative</code>, <code>absolute</code>, <code>fixed</code>, o <code>sticky</code>. (En otras palabras, cualquiera excepto <code>static</code>).</li>
 <li>Un <strong>elemento posicionado relativamente</strong> es un elemento cuyo valor&nbsp;<a href="/en-US/docs/CSS/computed_value" title="CSS/computed_value">computado</a> de&nbsp;<code>position</code> es <code>relative</code>. Las propiedades <a href="/es/docs/Web/CSS/top" title="La propiedad top especifica parte de la posición de un elemento posicionado. No tiene efecto en elementos no posicionados."><code>top</code></a> y <a href="/es/docs/Web/CSS/bottom" title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>bottom</code></a> especifican el desplazamiento vertical desde su posición original; las propiedades <a href="/es/docs/Web/CSS/left" title="La propiedad left especifica parte de la posición de un elemento (posicionado - es decir, con una posición determinada por código)."><code>left</code></a> y <a href="/es/docs/Web/CSS/right" title="La propiedad right especifica parte de la posición de un elemento (posicionado - es decir, con una posición determinada por código)."><code>right</code></a> especifican su desplazamiento horizontal.</li>
 <li>Un <strong>elemento posicionado absolutamente</strong> es un elemento cuyo valor&nbsp;<a href="/en-US/docs/CSS/computed_value" title="CSS/computed_value">computado</a> de&nbsp; <code>position</code>&nbsp;es&nbsp;<code>absolute</code> o <code>fixed</code>. Las propiedades <a href="/es/docs/Web/CSS/top" title="La propiedad top especifica parte de la posición de un elemento posicionado. No tiene efecto en elementos no posicionados."><code>top</code></a>, <a href="/es/docs/Web/CSS/right" title="La propiedad right especifica parte de la posición de un elemento (posicionado - es decir, con una posición determinada por código)."><code>right</code></a>, <a href="/es/docs/Web/CSS/bottom" title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>bottom</code></a>, y&nbsp; <a href="/es/docs/Web/CSS/left" title="La propiedad left especifica parte de la posición de un elemento (posicionado - es decir, con una posición determinada por código)."><code>left</code></a> especifican el desplazamiento desde los bordes del <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/All_About_The_Containing_Block"> bloque contenedor</a> del elemento. (El bloque contenedor es el ancestro más cercano posicionado). Si el elemento tiene márgenes, se agregarán al desplazamiento.</li>
 <li>Un <strong>elemento posicionado fijamente&nbsp;</strong>es un elemento cuyo valor de&nbsp; <code>position </code><a href="/en-US/docs/CSS/computed_value" title="CSS/computed_value">computado</a> es <code>sticky</code>. Es tratado&nbsp;como un elemento posicionado relativamente hasta que su <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/All_About_The_Containing_Block">bloque contenedor</a> cruza un límite establecido (como por ejemplo dando a <a href="/es/docs/Web/CSS/top" title="La propiedad top especifica parte de la posición de un elemento posicionado. No tiene efecto en elementos no posicionados."><code>top</code></a> cualquier valor distinto de auto), dentro de su flujo principal (o el contenedor dentro del cual se mueve), punto al cual es tratado como "fijo" hasta que alcance el borde opuesto de su <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/All_About_The_Containing_Block">bloque contenedor</a>.</li>
</ul>

<%@include file="../../../includes/pie.jsp"%>