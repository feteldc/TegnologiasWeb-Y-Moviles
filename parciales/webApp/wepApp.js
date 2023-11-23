
//
document.addEventListener("DOMContentLoaded", function () {
    const longitudInput = document.getElementById("longitud");

    const minusculasCheckbox = document.getElementById("minusculas");
    const mayusculasCheckbox = document.getElementById("mayusculas");
    const numerosCheckbox = document.getElementById("numeros");
    const simbolosCheckbox = document.getElementById("simbolos");
    const generarButton = document.getElementById("generar");
    const contrasenaResultado = document.getElementById("contrasena");


    //
    const caracteresMayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    const caracteresMinusculas = "abcdefghijklmnopqrstuvwxyz";
    const caracteresNumeros = "0123456789";
    const caracteresSimbolos = "!@#$%^&*()_+[]{}|;':,.<>?";


    //
    generarButton.addEventListener("click", function () {
        if(length)>=8 & (length)=20{
            const longitud = parseInt(longitudInput.value);
        
            const incluirminusculas = minusculasCheckbox.checked
            const incluirMayusculas = mayusculasCheckbox.checked;
            const incluirNumeros = numerosCheckbox.checked;
            const incluirSimbolos = simbolosCheckbox.checked;

            let caracteresPermitidos ="";  //

            if (incluirminusculas) {
            caracteresPermitidos += caracteresMinusculas;
            }

            if (incluirMayusculas) {
            caracteresPermitidos += caracteresMayusculas;
            }
            if (incluirNumeros) {
            caracteresPermitidos += caracteresNumeros;
         }
            if (incluirSimbolos) {
            caracteresPermitidos += caracteresSimbolos;
            }

            let contrasena = "";

            for (let i = 0; i < longitud; i++) {
            const indiceAleatorio = Math.floor(Math.random() * caracteresPermitidos.length);
            contrasena += caracteresPermitidos.charAt(indiceAleatorio);
            }
        }
        contrasenaResultado.textContent = contrasena;
    });
});
