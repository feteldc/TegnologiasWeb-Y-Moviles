
var nota1 = parseFloat(prompt("Ingrese la nota 1:"));
if(isNaN(nota1) ){
    alert('ingrese numeros solamente por favor');
} else{

}

var nota2 = parseFloat(prompt("Ingrese la nota 2:"));
if(isNaN(nota2) ){
    alert('ingrese numeros solamente por favor');
} else{
}

var nota3 = parseFloat(prompt("Ingrese la nota 3:"));
if(isNaN(nota3) ){
    alert('ingrese numeros solamente por favor');
} else{
}


var promedioPonderado = (nota1 * 0.4) + (nota2 * 0.3) + (nota3 * 0.3);

// Determinar el estado del estudiante
if (promedioPonderado >= 4.95) {
    alert("El alumno se exime de la asignatura.");
} else if (promedioPonderado >= 3.95 && promedioPonderado < 4.95 ) {
    alert("El alumno va a examen.");
} else {
    alert("El alumno ha reprobado la asignatura.");
}