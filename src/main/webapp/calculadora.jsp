<%String title = "Calculadora"; %>
<%@include file="includes/cabecera.jsp" %>
<%@include file="includes/navegacion.jsp" %>
	<style>
form {
	padding: 20px;
	color: #0c2661;
}

input, select {
	padding: 5px;
	border: 0px;
	border-bottom: 1px solid #0c2661;
	width: 100%;
	max-width: 200px;
	background-color: transparent;
	text-align: center;
	margin-top: 5px;
	color: #0c2661;
}

select {
	cursor: pointer;
}

input[type="checkbox"] {
	width: auto;
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

form img {
	max-width: 120px;
	border-radius: 60px;
}

button {
	background-color: transparent;
	border: 1px solid #0c2661;
	border-radius: 20px;
	padding: 4px 10px;
	color: #0c2661;
	cursor: pointer;
}

.loader {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 50px;
	background: transparent;
	margin: 30px auto 0 auto;
	border: solid 2px #424242;
	border-top: solid 2px #0c2661;
	border-radius: 50%;
	opacity: 0;
}

.check {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	-webkit-transform: translate3d(-4px, 50px, 0);
	transform: translate3d(-4px, 50px, 0);
	opacity: 0;
}

.check span:nth-child(1) {
	display: block;
	width: 10px;
	height: 2px;
	background-color: #72c7dc;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
}

.check span:nth-child(2) {
	display: block;
	width: 20px;
	height: 2px;
	background-color: #72c7dc;
	-webkit-transform: rotate(-45deg) translate3d(14px, -4px, 0);
	transform: rotate(-45deg) translate3d(14px, -4px, 0);
	-webkit-transform-origin: 100%;
	transform-origin: 100%;
}

.loader.active {
	-webkit-animation: loading 2s ease-in-out;
	animation: loading 2s ease-in-out;
	-webkit-animation-fill-mode: forwards;
	animation-fill-mode: forwards;
}

.check.active {
	opacity: 1;
	-webkit-transform: translate3d(-4px, 4px, 0);
	transform: translate3d(-4px, 4px, 0);
	transition: all 0.5s cubic-bezier(0.49, 1.74, 0.38, 1.74);
	transition-delay: .2s;
}

@
-webkit-keyframes loading { 30% {
	opacity: 1;
}

85%
{
opacity
:
 
1;
-webkit-transform
:
 
rotate
(1080deg);

                
transform
:
 
rotate
(1080deg);

                
border-color
:
 
#72c7dc
;

            
}
100%
{
opacity
:
 
1;
-webkit-transform
:
 
rotate
(1080deg);

                
transform
:
 
rotate
(1080deg);

                
border-color
:
 
#0c2661
;

            
}
}
@
keyframes loading { 30% {
	opacity: 1;
}
85%
{
opacity
:
 
1;
-webkit-transform
:
 
rotate
(1080deg);

                
transform
:
 
rotate
(1080deg);

                
border-color
:
 
#72c7dc
;

            
}
100%
{
opacity
:
 
1;
-webkit-transform
:
 
rotate
(1080deg);

                
transform
:
 
rotate
(1080deg);

                
border-color
:
 
#0c2661
;

            
}
}
</style>

	<h1>Calculadora</h1>

	<form action="sumar" method="POST">

		<label for="operacion">Tipo de operación</label><br> <input
			type="radio" name="op" value="1"> Sumar<br> <input
			type="radio" name="op" value="2"> Restar<br> <input
			type="radio" name="op" value="3"> Multiplicar<br> <input
			type="radio" name="op" value="4"> Dividir

		<p>
			<input type="number" name="op1" placeholder="Número 1" autofocus
				required>
		</p>
		<p>
			<input type="number" name="op2" placeholder="Número 2" required>
		</p>

		<button type="submit">Calcular</button>

	</form>

	<%@include file="includes/pie.jsp"%>