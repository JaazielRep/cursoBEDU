//Variable primitivas

var nombre = "Jaaziel";
var edad = 31;
var vivo = true;

//Variables compuestas

var persona = {
    nombre: "Jaaziel",
    edad: 31,
    vivo: true
};

var personaCaracteristicas = [
    "Jaaziel",
    31,
    true
]

var funcionMensaje = function(){
    alert("Hola");
}

//Variables especiales

var valorNulo;
//console.log(valorIndefinido);

/*
#################################################################
*/

console.log(3 == "3");
console.log(3 === "3");

console.log(3 != "3");
console.log(3 !== "3");

const edadUsuario = Number(prompt("Introduce edad"));
let identificacion = prompt("Introduce tu identificacion");

//Valida edad e identificacion IF

if( edadUsuario >= 18){
    console.log("Edad necesaria");
}else{
    console.log("Edad insuficiente");
}

if(identificacion == "INE"){
    console.log("Identificacion correcta");
}else{
    console.log("Se requiere identificacion");
}

if(edadUsuario >= 18 && identificacion === "INE" || identificacion === "CARTILLA"){
    console.log("Puede consumir alcohol");
}else{
    console.log("No puedes consumir");
}

//Valida promociones IF

if(edadUsuario >= 21 && edadUsuario <= 42){
    console.log("Promocion gen Millennial!!")
}else if(edadUsuario >= 18 && edadUsuario <= 20){
    console.log("Promocion gen Cristal!!")
}else if(edadUsuario > 42){
    console.log("Promocion gen Boomer!!")
}else{
    console.log("No puedes comprar nada!")
}

//Ciclo numeros primos

for (let index = 0; index < 10; index++) {
    if(index % 2 === 0){
        console.log("Numero par: " + index + ". Residuo: ", index % 2);
    }else if(index % 2 !== 0){
        console.log("Numero impar: " + index + ". Residuo: ", index % 2)
    }
}

console.warn("--");

for (let index2 = 2; index2 < 10; index2++) {

}

console.log(9 % 3)

