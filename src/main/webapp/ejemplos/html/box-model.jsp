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

section {
	border: 1px solid #000;
	padding: 10px;
	margin-bottom: 50px;
	-webkit-box-shadow: 10px 10px 40px 0px rgba(89, 89, 86, 1);
	-moz-box-shadow: 10px 10px 40px 0px rgba(89, 89, 86, 1);
	box-shadow: 10px 10px 40px 0px rgba(89, 89, 86, 1);
}

.box-texto {
	display: inline-block;
	width: 100px;
	height: 100px;
	border: 2px solid #000000;
}
</style>

<h1>Box Model</h1>

<section>
	<p>Toda etiqueta tiene una estructura de caja.</p>

	<h2>Elementos en línea o bloque</h2>
	<p>
		<code>display</code>
		es el atributo para gestionar si es líena o bloque. Existen muchos
		más displays, como el flexbox.
	</p>
</section>

<section>
	<dl>
		<dt>block</dt>
		<dd>Ocupa todo el ancho del elemento padre.</dd>
		<dt>inline</dt>
		<dd>Ocupa lo que tenga su contenido.</dd>
		<dt>inline-block</dt>
		<dd>Híbrida de las dos anteriores.</dd>
	</dl>

	<p>
		Lorem ipsum dolor, sit <span> consectetur adipisicing elit.</span>
		Odit inventore quo maxime sunt modi cumque deleniti doloribus
		accusantium hic, aperiam iste provident, dolorum impedit expedita vel
		delectus, doloremque iusto dolore!
	</p>
</section>

<section>
	<div class="box">1</div>
	<div class="box">2</div>
</section>

<section>
	<h2>Visibility</h2>
	<p>Existen dos formas de ocultar elementos de html.</p>

	<p>
		Usando
		<code>visibility</code>
	</p>
	<div class="box">1</div>
	<div class="box" style="visibility: hidden;">2</div>
	<div class="box">3</div>

	<p>
		Usando
		<code>display: none</code>
	</p>
	<div class="box">1</div>
	<div class="box" style="display: none;">2</div>
	<div class="box">3</div>
</section>

<section>
	<h2>Overflow</h2>
	<p>
		Como se muestra cuando no entra en el contenedor padre
		<code>visible | hidden | scroll | auto</code>
	</p>

	<div class="box-texto" style="overflow: hidden;">
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi
			doloremque repellat impedit expedita facere. Commodi quisquam
			praesentium ab earum odio voluptates, adipisci consequatur tenetur
			amet quae qui iure neque saepe.</p>
	</div>
	<div class="box-texto" style="overflow: scroll;">
		<p>Dolorem veritatis sint amet porro aperiam pariatur. Est ex
			asperiores voluptatum tempore exercitationem molestiae doloremque
			inventore recusandae, magni debitis blanditiis totam quas impedit
			reiciendis atque in quisquam nihil, suscipit adipisci.</p>
	</div>
	<div class="box-texto" style="overflow: auto;">
		<p>Hic officia nulla ducimus voluptatem adipisci totam quas
			deleniti suscipit nisi commodi? Labore eum dolores possimus, facere
			corrupti deserunt, quaerat cum dolore iure dicta id consequatur non
			amet quas. Id.</p>
	</div>
	<div class="box-texto" style="overflow: visible;">
		<p>Nostrum odit quos doloribus nesciunt, eius eos incidunt id nemo</p>
	</div>

	<p>
		También se puede usar
		<code>overflow-x</code>
		y
		<code>overflow-y</code>
	</p>
	<div class="box-texto" style="overflow-x: scroll;">
		<p>Dolorem veritatis sint amet porro aperiam pariatur. Est ex
			asperiores voluptatum tempore exercitationem molestiae doloremque
			inventore recusandae, magni debitis blanditiis totam quas impedit
			reiciendis atque in quisquam nihil, suscipit adipisci.</p>
	</div>
	<div class="box-texto" style="overflow-y: scroll;">
		<p>Dolorem veritatis sint amet porro aperiam pariatur. Est ex
			asperiores voluptatum tempore exercitationem molestiae doloremque
			inventore recusandae, magni debitis blanditiis totam quas impedit
			reiciendis atque in quisquam nihil, suscipit adipisci.</p>
	</div>
</section>

<section>
	<h2>Z-index</h2>
	<p>Se encarga de la profundidad de los elementos, cuando se
		solapan.</p>

	<div class="box"
		style="z-index: 2; position: relative; top: 78px; left: 165px;">1</div>
	<div class="box"
		style="z-index: 1; position: relative; top: -10px; left: 20px; background-color: red;">2</div>
	<div class="box" style="z-index: 0; position: relative;">3</div>
</section>

<%@include file="../../../includes/pie.jsp"%>