function imc() {
    var nombre = document.getElementById("nombre").value;
    var peso = parseFloat(document.getElementById("Peso").value);
    var altura = parseFloat(document.getElementById("Altura").value);
    var edad = parseInt(document.getElementById("Edad").value);
    var genero = document.getElementById("Genero").value;
    var actividadFisica = document.getElementById("ActividadFisica").value;

    var imc = peso / (altura * altura);
    var categoria = "";
    var estadoNutricional = "";

    if (imc < 18.5) {
        categoria = 'Bajo Peso';
        estadoNutricional = 'Necesita atención especializada';
    } else if (imc >= 18.5 && imc < 24.9) {
        categoria = 'Peso Normal';
        estadoNutricional = 'Estado nutricional adecuado';
    } else {
        categoria = 'Sobrepeso';
        estadoNutricional = 'Necesita atención especializada';
    }

    var factorActividad = 1.0;

    switch (actividadFisica) {
        case 'sedentario':
            factorActividad = 1.2;
            break;
        case 'moderado':
            factorActividad = 1.55;
            break;
        case 'activo':
            factorActividad = 1.9;
            break;
    }

    var gastoEnergeticoDiario = peso * factorActividad;

    var resultado = `Nombre: ${nombre}<br>IMC: ${imc.toFixed(2)}<br>Categoría de IMC: ${categoria}<br>Edad: ${edad} años<br>Género: ${genero}<br>Gasto Energético Diario (GED): ${gastoEnergeticoDiario.toFixed(2)} kcal<br>Estado Nutricional: ${estadoNutricional}`;

    document.getElementById("resultado").innerHTML = resultado;
}

