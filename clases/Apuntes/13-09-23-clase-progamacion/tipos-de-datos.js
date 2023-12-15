
const bigint = 10201203012301023348258347825739487n;

console.log(bigint);

console.log("hola" * 4);

console.log("6" / 2);

let string1 = "mi string1";

let string2 = `holahola: ${string1}`;

console.log(string1);
console.log(string2);

let v = true;
let f = false;
let truofake = true;

if (truofake) {
    console.log("es tru");
} else {
    console.log("es fake")
}

let indefinido;
console.log(indefinido);

//en python era dict() para diccionarios. aqui es object()
//estas 2 formas son legales (la de llaves es mas rapida por escribir menos)
let dic1 = new Object();
let dic2 = {};

let dic3 = {
    palabra1: "hola",
    palabra2: "mundo"
}

//imprimo diccionario
console.log(dic3);

//modifico y añado atributos
dic3.palabra1 = "adios";
dic3.palabra3 = "lol";

console.log(typeof bigint);

bigint = String(bigint);

console.log(typeof bigint);
