
var frase = prompt('ingresa una frase: ')


var letra = prompt('ingresa una letra para contar su frecuencia en la frase: ')


function contarLetra(frase, letra) {
    let contador = 0;

    for (let i = 0; i < frase.length; i++) {
        const caracter = frase.charAt(i);

        
        if (caracter.toLowerCase() === letra.toLowerCase()) {
            contador++;
        }
    }

    return contador;
}


const cantidad = contarLetra(frase, letra);
alert(`La letra "${letra}" se repite ${cantidad} veces en la frase "${frase}".`)





