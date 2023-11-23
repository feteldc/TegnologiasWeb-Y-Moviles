
var cantidadSinIVA =prompt('ingrese la cantidad sin iva ') 


var totalConIVA = (calcularTotalConIVA(cantidadSinIVA))



function calcularTotalConIVA(cantidadSinIVA, porcentajeIVA = 19) {
    // Verificar que el porcentaje de IVA esté entre 0 y 100
    if (porcentajeIVA < 0 || porcentajeIVA > 100) {
        return "Porcentaje de IVA inválido. Debe estar entre 0 y 100.";
    }

    // Calcular el total con IVA
    const total = cantidadSinIVA + (cantidadSinIVA * (porcentajeIVA / 100));

    return total;
}


alert(`El total con IVA es: $${totalConIVA}`);

  