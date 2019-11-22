<%String title = "Media Queries"; %>
<%@include file="../../../../includes/cabecera.jsp"%>
<%@include file="../../../../includes/navegacion.jsp"%>
<style>

/* Laptop or little screens */
@media (min-width: 1200px) {
}

@media (min-width: 992px) {
}

/* Tablet */
@media ( max-width : 768px) {
}

/* Mobile */
@media ( max-width : 576px) {
}

@media ( max-width : 368px) {
}

</style>
<h1>Media Queries</h1>
<p>
	Una <strong>media query</strong> consiste en un tipo de medio y al
	menos una consulta que limita las hojas de estilo utilizando
	características del medio como ancho, alto y color. Se entiende como un
	módulo CSS3 que permite adaptar la representación del contenido a
	características del dispositivo. Añadido en <a
		href="https://developer.mozilla.org/en-US/docs/CSS/CSS3"
		title="/en-US/docs/CSS/CSS3">CSS3</a>, las media queries dejan que la
	presentación del contenido se adapte a un rango específico de
	dispositivos de salida sin tener que cambiar el contenido en sí.
</p>
<h2>Sintaxis</h2>
<p>
	Las Media queries consisten de un <a
		href="https://developer.mozilla.org/en/CSS/@media"
		title="En/CSS/@media">media type</a> y una o mas expresiones,
	implicando características del medio, la cual se resuelve como
	verdadera o falsa. El resultado de la consulta es verdadera si el tipo
	de medio especificado en el media query concuerda con el tipo de
	dispositivo que está siendo mostrado y todas las expresiones en el
	media query son verdaderas.
</p>
<pre>
	<code> !-- CSS media query on a link element -- 
</code> link rel="stylesheet" media="(max-width: 800px)" href="example.css" / 

<code> !-- CSS media query within a style sheet -- 
 style 
@media (max-width: 600px) {
  .facet_sidebar {
    display: none;
  }
}
 /style </code>
</pre>
<p>Cuando una media query es verdadera, la hoja de estilo
	correspondiente o reglas de estilos son aplicadas, siguiendo las reglas
	normales de cascada.</p>
<p>
	Cuando 
	<code>not</code>
	 ni 
	<code>only</code>
	 son usadas dentro de una query, el tipo de medio es opcional y
	será interpretada como
	<code> all.</code>
</p>
<h3>Operadores Lógicos</h3>
<p>
	Se pueden redactar queries utilizando operadores lógicos,
	incluyendo 
	<code>not</code>
	, 
	<code>and</code>
	, y 
	<code>only</code>
	.
</p>
<p>Además se puede combinar múltiples queries en una lista separada
	por comas múltiples; si cualquiera de las queries en la lista es
	verdadera, la hoja de estilo asociada es aplicada. Esto es equivalente
	a una operación lógica "or".</p>
<h4>and</h4>
<p>
	El operador 
	<code>and</code>
	 es usado para colocar juntas múltiples <a title="Funciones"
		href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2271">funciones</a>
	multimedia. Un query básico con el tipo de medio especificado
	como 
	<code>all</code>
	 puede lucir así:
</p>
<pre>
	<code>@media (min-width: 700px) { ... }</code>
</pre>
<p>
	Si usted quiere aplicar ese query solo si la pantalla esta en formato
	horizontal, usted puede utilizar el operador 
	<code>and</code>
	 y colocar la siguiente cadena:
</p>
<pre>
	<code>@media (min-width: 700px) and (orientation: landscape) { ... }</code>
</pre>
<p>La siguiente query solo retornara verdadero si la ventana tiene
	un ancho de 700px o mas y la pantalla esta en formato horizontal. Ahora
	si usted quiere aplicar esta opción solo si tipo de medio es TV, usted
	puede utilizar la siguiente cadena:</p>
<pre>
	<code>@media tv and (min-width: 700px) and (orientation: landscape) { ... }</code>
</pre>
<p>Esta query solo se aplica si el tipo de medio es TV, la ventana
	tiene 700px de ancho o mas y la pantalla esta en formato horizontal.</p>
<h4>lista separada por comas</h4>
<p>
	Las listas separadas por comas se comportan como el operador 
	<code>or</code>
	 cuando es usado en media queries. Cuando utilice una lista
	separada por comas y alguno de los queries retorna verdadero, el estilo
	o la hoja de estilos sera aplicada. Cada query en una lista separada
	por comas es tratado como una query individual y cualquier operador
	aplicado a un medio no afectara a los demás. Esto significa que cada
	query en una lista separada por comas puede tener como objetivo
	diferentes medios, tipos y estados.
</p>
<p>Si usted quiere aplicar una serie de estilos para un equipo con
	un ancho mínimo de 700px o si el dispositivo esta colocado en
	horizontal, usted puede escribir lo siguiente:</p>
<pre>
	<code>@media (min-width: 700px), handheld and (orientation: landscape) { ... }</code>
</pre>
<p>
	Por lo tanto, si esta en una 
	<code>screen</code>
	 con una ventana de 800px de ancho, la declaración del medio
	retornara verdadero debido a la primera parte de la lista, si aplicamos
	esto a un dispositivo 
	<code>@media all and (min-width: 700px)</code>
	 podría retornar verdadero a pesar del hecho de que la pantalla
	falle la verificación tipo de medio del 
	<code>handheld</code>
	 en la segunda query. Por otra parte si estuviese en un 
	<code>handheld</code>
	 con un ancho de ventana de 500px, la primera parte de la lista
	fallaría pero la segunda parte retornara verdadero debido a la
	declaración de medio.
</p>
<h4>not</h4>
<p>
	El operador 
	<code>not</code>
	 aplica a todo el query y retorna verdadero si es posible y sino
	retorna falso (como por ejemplo 
	<code>monochrome</code>
	 en un monitor a color o una ventana con un ancho mínimo de 
	<code>min-width: 700px</code>
	 en un monitor de 600px). Un 
	<code>not</code>
	 negara un query si es posible pero no a todos los query posibles
	si están ubicados en una lista separada por comas. El operador 
	<code>not</code>
	 no puede ser usado para negar un query individual, solo para un
	query completo. Por ejemplo, el 
	<code>not</code>
	 en el siguiente query es evaluado al final:
</p>
<pre>
	<code>@media not all and (monochrome) { ... }</code>
</pre>
<p>Esto significa que el query es evaluado de la siguiente forma:</p>
<pre>
	<code>@media not (all and (monochrome)) { ... }</code>
</pre>
<p>... y no de esta forma:</p>
<pre>
	<code>@media (not all) and (monochrome) { ... }</code>
</pre>
<p>Otro Ejemplo:</p>
<pre>
	<code>@media not screen and (color), print and (color)</code>
</pre>
<p>Es evaluado de la siguiente forma:</p>
<pre>
	<code>@media (not (screen and (color))), print and (color)</code>
</pre>
<h4>only</h4>
<p>
	El operador 
	<code>only</code>
	 previene que navegadores antiguos que no soportan queries con <a
		title="Funciones"
		href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2271">funciones</a>
	apliquen los estilos asignados:
</p>
<pre>
	<code> link rel="stylesheet" media="only screen and (color)" href="Ejemplo.css" / </code>
</pre>
<h3>Pseudo-BNF</h3>
<pre>media_query_list:  media_query  [,  media_query  ]*
media_query: [[only | not]?  media_type  [ and  expression  ]*]
  |  expression  [ and  expression  ]*
expression: (  media_feature  [:  value ]? )
media_type: all | aural | braille | handheld | print |
  projection | screen | tty | tv | embossed
media_feature: width | min-width | max-width
  | height | min-height | max-height
  | device-width | min-device-width | max-device-width
  | device-height | min-device-height | max-device-height
  | aspect-ratio | min-aspect-ratio | max-aspect-ratio
  | device-aspect-ratio | min-device-aspect-ratio | max-device-aspect-ratio
  | color | min-color | max-color
  | color-index | min-color-index | max-color-index
  | monochrome | min-monochrome | max-monochrome
  | resolution | min-resolution | max-resolution
  | scan | grid</pre>
<p>Los queries son insensibles a las mayúsculas o minúsculas. Media
	queries que contengan tipos de medios desconocidos siempre retornaran
	falso.</p>
<div>
	<strong>Nota:</strong> Los paréntesis son requeridos alrededor de
	las expresiones, no utilizarlos es un error.
</div>
<h2>
	<a title="Funciones"
		href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2271">Funciones</a>
	Multimedia
</h2>
<p>
	La mayoría de las <a title="Funciones"
		href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2271">funciones</a>
	multimedia pueden ser precedidas por "min-" o "max-" para expresar
	"greater or equal to" o "less than or equal to". Esto elimina la
	necesidad de usar los símbolos " " y " " los cuales podrían
	causar conflictos con HTML y XML. Si usted usa una función multimedia
	sin especificarle un valor, la expresión retornara verdadero si el
	valor es diferente de cero.
</p>
<div>
	<strong>Nota:</strong> Si una función multimedia no aplica al
	dispositivo donde el navegador esta corriendo, la expresión que
	contiene esa función siempre retornara falso. Por Ejemplo, cambiar la
	relación de aspecto en un dispositivo aural siempre resultara falso.
</div>
<h3>color</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/color_value"
		title="El tipo de datos CSS <color> denota un color en el sRGB color space. Un color puede ser descrito en cualquiera de las siguiente maneras:"><code> color </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a><br>
	<strong>Acepta prefijos min/max:</strong> si
</p>
<p>Indica el numero de bits por componente de color del dispositivo
	de salida. Si el dispositivo no soporta colores, este valor es 0.</p>
<div>
	<strong>Nota:</strong> Si el componente de color tiene diferente
	numero de bits por color, entonces el valor mas pequeño es utilizado.
	Por Ejemplo, si una pantalla utiliza 5 bits para azul y rojo y 6 bits
	para el verde, entonces se utilizan 5 bits por componente de color. Si
	el dispositivo utiliza índices de color se usara el mínimo valor de
	bits por color en la tabla.
</div>
<h4>Ejemplos</h4>
<p>Para aplicar una hoja de estilo a todos los dispositivos que
	soporten colores:</p>
<pre>
	<code>@media all and (color) { ... }</code>
</pre>
<p>Para aplicar una hoja de estilo a dispositivos con al menos 4
	bits por componente de color:</p>
<pre>
	<code>@media all and (min-color: 4) { ... }</code>
</pre>
<h3>color-index</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/integer"
		title="Un valor entero usado para algunas propiedades CSS que no tiene unidades."><code> integer </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a><br>
	<strong>Acepta prefijos min/max</strong><strong>:</strong> sí
</p>
<p>Indica el numero de entradas en la tabla de colores para el
	dispositivo de salida.</p>
<h4>Ejemplos</h4>
<p>Para indicar que una hoja de estilo debe aplicarse a todos los
	dispositivos utilizando índices de color, usted puede hacer esto:</p>
<pre>
	<code>@media all and (color-index) { ... }</code>
</pre>
<p>Para aplicar una hoja de estilo a un dispositivo con un índice de
	al menos 256 colores:</p>
<pre>
	<code> link rel="stylesheet" media="all and (min-color-index: 256)" href="http://foo.bar.com/stylesheet.css" / </code>
</pre>
<h3>aspect-ratio</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/ratio"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code> ratio </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a>, <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Tactile"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tactile</code></a><br>
	<strong>Acepta prefijos min/max</strong><strong>:</strong> sí
</p>
<p>Describe el aspecto de una zona a mostrar en el dispositivo de
	salida. Este valor consiste en enteros positivos separados por una
	barra ("/"). Esto representa la razón de aspecto de los pixeles
	horizontales (primer termino) a los pixeles verticales (segundo
	termino).</p>
<h4>Ejemplo</h4>
<p>Lo siguiente selecciona una hoja de estilo especial para ser
	aplicada donde la proporción del tamaño de la pantalla del dispositivo
	de salida es al menos la misma de ancho que de alto.</p>
<pre>
	<code>@media screen and (min-aspect-ratio: 1/1) { ... }</code>
</pre>
<p>
	Este selecciona el estilo cuando la proporción de aspecto sea 1:1 o
	superior. En otras palabras este estilo solo sera aplicado cuando el
	área de <a title="Visualización"
		href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2189">visualización</a>
	sea cuadrada u horizontal.
</p>
<h3>device-aspect-ratio</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/ratio"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code> ratio </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a>, <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Tactile"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tactile</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>Describe la proporción de aspecto del dispositivo de salida. Este
	valor consiste de dos enteros positivos separados por una barra ("/").
	Este representa la proporción de aspecto de los pixeles horizontales
	(primer termino) a los pixeles verticales (segundo termino).</p>
<h4>Ejemplo</h4>
<p>El siguiente código selecciona una hoja de estilo especial para
	ser aplicada en pantallas panorámicas ("widescreen").</p>
<pre>
	<code>@media screen and (device-aspect-ratio: 16/9), screen and (device-aspect-ratio: 16/10) { ... }</code>
</pre>
<p>Este selecciona el estilo cuando la proporción de aspecto sea
	16:9 o 16:10.</p>
<h3>device-height</h3>
<p>
	<strong>Valor</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/length"
		title="El tipo de dato CSS <length> denota medidas de distancia. Es un valor <number> seguido por una unidad de longitud (px, em, pc, in, mm, etc). Al igual que en cualquier dimensión CSS, no debe haber espacio entre la unidad y el número. La unidad de longitud es opcional después del valor <number> 0."><code> length </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a>, <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Tactile"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tactile</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>Describe la altura del dispositivo de salida (ya sea la totalidad
	de la pantalla o página y no el área del documento a renderizar).</p>
<h3>device-width</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/length"
		title="El tipo de dato CSS <length> denota medidas de distancia. Es un valor <number> seguido por una unidad de longitud (px, em, pc, in, mm, etc). Al igual que en cualquier dimensión CSS, no debe haber espacio entre la unidad y el número. La unidad de longitud es opcional después del valor <number> 0."><code> length </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a>, <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Tactile"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tactile</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>Describe la anchura del dispositivo de salida (ya sea la
	totalidad de la pantalla o página y no el área del documento a
	renderizar).</p>
<h4>Ejemplo</h4>
<p>Para aplicar una hoja de estilo a un documento cuando este sea
	mostrado en una pantalla de menos de 800px de ancho, usted puede usar
	esto:</p>
<pre>
	<code> link rel="stylesheet" media="screen and (max-device-width: 799px)" / </code>
</pre>
<h3>grid</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/integer"
		title="Un valor entero usado para algunas propiedades CSS que no tiene unidades."><code> integer </code></a><br>
	<strong>Medio</strong><strong>:</strong> all<br> <strong>Acepta
		prefijos min/max:</strong> no
</p>
<p>Determina cuando el dispositivo de salida es un dispositivo de
	cuadrícula o de mapa de bits. Si el dispositivo esta basado en una
	cuadrícula (como una terminal TTY o una pantalla de teléfono de solo
	texto), el valor sera 1, de lo contrario sera 0.</p>
<h4>Ejemplo</h4>
<p>Para aplicar una hoja de estilo a un dispositivo portátil con una
	pantalla de 15 caracteres o mas estrecha:</p>
<pre>
	<code>@media handheld and (grid) and (max-width: 15em) { ... }</code>
</pre>
<div>
	<strong>Nota:</strong> La unidad "em" tiene un significado
	especial para los dispositivos de cuadrícula; ya que la anchura exacta
	de una "em" no puede ser determinada, se asume un "em" como el ancho de
	una celda en la cuadrícula y el alto de una celda en la cuadrícula.
</div>
<h3>height</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/length"
		title="El tipo de dato CSS <length> denota medidas de distancia. Es un valor <number> seguido por una unidad de longitud (px, em, pc, in, mm, etc). Al igual que en cualquier dimensión CSS, no debe haber espacio entre la unidad y el número. La unidad de longitud es opcional después del valor <number> 0."><code> length </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a>, <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Tactile"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tactile</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>
	La función 
	<code>height</code>
	 describe la altura de la superficie a renderizar en el
	dispositivo de salida (como la altura de una ventana o la bandeja de
	papel en una impresora).
</p>
<div>
	<strong>Nota:</strong> Cuando el usuario cambia el tamaño de una
	ventana Firefox también cambia las hojas de estilo para utilizar la mas
	adecuada basándose en los valores de 
	<code>width</code>
	 y 
	<code>height</code>
	 del query.
</div>
<h3>monochrome</h3>
<p>
	<strong>Valor:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/integer"
		title="Un valor entero usado para algunas propiedades CSS que no tiene unidades."><code> integer </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>Indica el número de bits por pixel en un dispositivo
	monocromático (escala de grises). Si el dispositivo no es monocromático
	el valor sera 0.</p>
<h4>Ejemplos</h4>
<p>Para aplicar una hoja de estilo a todos los dispositivos
	monocromáticos:</p>
<pre>
	<code>@media all and (monochrome) { ... }</code>
</pre>
<p>Para aplicar una hoja de estilo a un dispositivo monocromático
	con al menos 8 bits por pixel:</p>
<pre>
	<code>@media all and (min-monochrome: 8) { ... }</code>
</pre>
<h3>orientation</h3>
<p>
	<strong>Valor</strong><strong>:</strong> 
	<code>landscape</code>
	 | 
	<code>portrait</code>
	<br> <strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a><br>
	<strong>Acepta prefijos min/max:</strong> no
</p>
<p>Indica cuando el dispositivo esta en modo landscape (el ancho de
	la pantalla es mayor al alto) o modo portrait (el alto de la pantalla
	es mayor al ancho).</p>
<h4>Ejemplo</h4>
<p>Para aplicar una hoja de estilo solo en orientación vertical
	(portrait):</p>
<pre>
	<code>@media all and (orientation: portrait) { ... }</code>
</pre>
<h3>resolution</h3>
<p>
	<strong>Valor</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/resolution"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code> resolution </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Bitmap"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>bitmap</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>Indica la resolución (densidad de pixeles) del dispositivo de
	salida. La resolución puede ser especificada en puntos por pulgada
	(dpi) o en puntos por centímetros (dpcm).</p>
<h4>Ejemplo</h4>
<p>Para aplicar una hoja de estilo a dispositivos con al menos 300
	dpi de resolución:</p>
<pre>
	<code>@media print and (min-resolution: 300dpi) { ... }</code>
</pre>
<p>Para reemplazar la vieja sintaxis (min-device-pixel-ratio:
	2):</p>
<pre>
	<code>@media screen and (min-resolution: 2dppx) { ... }</code>
</pre>
<h3>scan</h3>
<p>
	<strong>Valor</strong><strong>:</strong> 
	<code>progressive</code>
	 | 
	<code>interlace</code>
	<br> <strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/TV"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tv</code></a><br>
	<strong>Acepta prefijos min/max:</strong> no
</p>
<p>Describe el proceso de exploración de televisión de los
	dispositivos de salida.</p>
<h4>Ejemplo</h4>
<p>Para aplicar una hoja de estilo solo a televisores de exploración
	progresiva:</p>
<pre>
	<code>@media tv and (scan: progressive) { ... }</code>
</pre>
<h3>width</h3>
<p>
	<strong>Valor</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/length"
		title="El tipo de dato CSS <length> denota medidas de distancia. Es un valor <number> seguido por una unidad de longitud (px, em, pc, in, mm, …). Al igual que en cualquier dimensión CSS, no debe haber espacio entre la unidad y el número. La unidad de longitud es opcional después del valor <number> 0."><code> length </code></a><br>
	<strong>Medio</strong><strong>:</strong> <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Visual"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/visual</code></a>, <a
		href="https://developer.mozilla.org/es/docs/Web/CSS/Media/Tactile"
		title="La documentación acerca de este tema no ha sido escrita todavía . ¡Por favor  considera contribuir !"><code>media/tactile</code></a><br>
	<strong>Acepta prefijos min/max:</strong> sí
</p>
<p>
	La función 
	<code>width</code>
	 describe el ancho de la superficie a renderizar en el dispositivo
	de salida (como el ancho de una ventana de un documento o el ancho de
	la bandeja de papel en una impresora).
</p>
<div>
	<strong>Nota:</strong> Cuando el usuario cambia el tamaño de una
	ventana Firefox también cambia las hojas de estilo para utilizar la mas
	adecuada basándose en los valores de 
	<code>width</code>
	 y 
	<code>height</code>
	 del query.
</div>
<h4>Ejemplos</h4>
<p>Si usted quiere especificar una hoja de estilo para dispositivos
	portátiles o pantallas con un ancho de al menos 20em, usted puede usar
	esta query:</p>
<pre>
	<code>@media handheld and (min-width: 20em), screen and (min-width: 20em) { ... }</code>
</pre>
<p>Esta query especifica una hoja de estilo para ser aplicada a un
	medio impreso con un ancho mayor a 8.5 pulgadas:</p>
<pre>
	<code> link rel="stylesheet" media="print and (min-width: 8.5in)"
    href="http://foo.com/mystyle.css" / </code>
</pre>
<p>Esta query especifica una hoja de estilo para ser utilizada
	cuando la ventana tiene un ancho entre 500 y 800 pixeles:</p>
<pre>
	<code>@media screen and (min-width: 500px) and (max-width: 800px) { ... }</code>
</pre>
<h2>Media Types</h2>
<p>
	Un media type puede ser declarado en la <em>cabecera</em> de
	un documento HTML usando el atributo "media" dentro de un elemento
	 link . El valor específico del atributo "media" indica en que
	dispositivo el documento vinculado será mostrado. Media types
	también pueden ser declarados dentro de instrucciones de procesamiento
	XML, el @import at-rule, y el @media at-rule. CSS2 definen los
	siguientes media types:
</p>
<ul>
	<li>braille</li>
	<li>embossed</li>
	<li>handheld</li>
	<li>print</li>
	<li>projection</li>
	<li>screen</li>
	<li>speech</li>
	<li>tty</li>
	<li>tv</li>
</ul>
<%@include file="../../../../includes/pie.jsp"%>