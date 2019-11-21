// Collapse menu
function collapse() {
  var menuCollapse = document.getElementsByClass("navbar-elements");
  if (menuCollapse.className === "navbar-elements") {
	  menuCollapse.className += " collapsed";
  } else {
	  menuCollapse.className = "navbar-elements";
  }
}

// Comentario de línea.

/** Comentario de bloque para doumentar */

/* Comentario de bloque */

console.trace('Esto es una traza de log.');
console.info('Para informar.');

var a = 2;
console.debug('La variable a = ' + a);

/* 
console.warn('Hay un problema.');
console.error('Error en la conexión al servidor rest');
*/

var persons = ['Cristian', 'Alejandro', 'Aitor', 'Endika', 'Iker', 'Íñigo', 'Kiryl', 'Juan Carlos', 'María', 'Ana', 'Erlantz', 'Raúl', 'Joseba', 'Mikel'];

function selectVolunteer() {
    var titulo = document.getElementById("volunteer");
    var audio = document.getElementById("audio");
    audio.play();

    titulo.innerHTML = persons[Math.floor(Math.random() * persons.length)];
}