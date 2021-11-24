console.info("#######################");
console.info("Sección 1");
console.warn("Si se tienen mas de dos archivos JS siempre se leera en orden de arriba hacia abajo");
console.info("Se incluira el archivo JS al final del HTML con el fin de poder utilizar los objetos dentro del DOM");
console.info("#######################");
console.log(" ");
console.info("* Undefined");
console.log("* Al declarar una variable (var) solo se podra acceder a ella despues de declararla,");
console.log("   al intentar acceder a la variable antes de su declaración, sera un valor indefinido.");
console.log(" ");
console.log("Acceso a variable a1 antes de definirla");
console.log(a1);
console.log("Acceso a la variable a1 ya definida, sin valor");
var a1;
console.log(a1);
console.log("Acceso a la variable a1 ya con valor definido");
a1 = "'Hola mundo'";
console.log(a1);
console.log(" ");
console.info("* Sync/ASync");
console.log("* Se comprueba como de forma nativa JS no es asincrono, para esto, se definen dos funciones,")
console.log("   la primera imprimira 10,000 iteraciones y la siguiente estara a cargo del evento onclick");
console.log("   a cargo de un objeto dentro del DOM");
console.log("* Al realizar el click en el objeto una vez cargado el DOM, JS esperara a que la primer funcion");
console.log("   termine su ejecución.");
function console1(){
    for (let counter1 = 0; counter1 < 10000; counter1++) {
        console.log("Imprime")
    }
}
function click1(){
    console.log("Click!")
}
console1();
