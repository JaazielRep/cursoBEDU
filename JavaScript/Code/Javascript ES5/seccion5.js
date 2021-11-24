console.warn("  WHILE - DO WHILE");
console.info("  Ciclos para iterar informacion siempre y cuando se cumple una condicion, en caso de usar DO, el codigo se ejecutara minimo una vez");
var whileI = 0;
var aContI = [];
console.log("   *** DO WHILE");
console.log("   Se puede utilizar break para romper el ciclo o continue para saltar la ejecucion del codigo en esa iteracion pero continuar con las siguientes");
do {
    whileI++;
    if (whileI === 2) {
        continue;
    }
    aContI.push(whileI);
    if (whileI === 5) {
        console.log("   Resultado:", aContI);
    }
    if (whileI > 5) {
        break;
    }
} while (whileI < 10);
console.log("   *** WHILE");
console.log("   Al usar while, podemos delimitar el break en la primer iteracion y el codigo se detendra.");
var whileJ = 0;
var aContJ = [];
while (whileJ < 10) {
    whileJ++;
    if (whileJ === 2) {
        continue;
    }
    aContJ.push(whileJ);
    if (whileJ === 5) {
        console.log("   Resultado:", aContJ);
    }
    if (whileJ > 5) {
        break;
    }
};
console.log("   ");
console.warn("  FOR / FOR IN");
console.info("  Su principal funcionalidad es realizar iteraciones de elementos dentro de un objeto, ya sea una clase, un objeto o un arreglo.");
console.log("   *** FOR");
console.log("   Esta instruccion requiere de un contador y un comparador para saber hasta que numero de iteraciones se ejecutaran.");
var aForI = []
for (let index = 0; index <= 10; index++) {
    aForI.push("a"+index); 
};
console.log("   Array creado mediante un ciclo FOR:", aForI);
console.log("   *** FOR IN");
console.log("   Esta instruccion requiere de una variable que tomara el valor de la posicion en donde se encuentreh hara iteracion dentro de los elementos de un contenedor hasta recorrerlos todos");
var OBJ1 = function(){
    this.nombre = "Funcion";
    this.apellido = "Interna";
    this.lineas = 3;
};
var forObjFun = new OBJ1();
OBJ1.prototype.propiedadExtra = "Soy adicional";
for ( x in forObjFun) {
    var boleanoFor = forObjFun.hasOwnProperty(x);
    if (boleanoFor) {
        console.log(x, " : ", forObjFun[x], "- Propiedad nativa:", boleanoFor)
    }else{
        console.log(x, " : ", forObjFun[x], "- Propiedad nativa:", boleanoFor)
    }
};
console.log("   *** FOR EACH");
console.log("   Esta instruccion funciona para recorrer todos los elementos de un array y retornar su valor.");
aForI.forEach(element => {
    console.log(element);
});
console.log("   ***Rotulacion de ciclos");
console.log("   La rotulacion de ciclos se refiere a la forma de nombrar lso ciclos para poder cortar iteraciones dentro de ciclos anidados");
for_uno:
for (let indexI = 0; indexI < 5; indexI++) {
    console.log("indexI:",indexI);
    for (let indexJ = 0; indexJ < 5; indexJ++) {
        console.log("indexJ:",indexJ);
        if (indexJ == 1) {
            continue for_uno;
        }
    }
};
console.warn(" setTimeOut / setInterval");
console.info("* Funciones encargadas de ejecutar acciones dentro un tiempo determinado");
console.log("   ***setTimeOut");
console.log("   setTimeOut consta de tres carateristicas, la declaracion de una funcion, el codigo que ejecutara la funcion y el tiempo a considerar para posterior a esto, ejecutar la funcion")
console.log("    setTimeout(()=>{Codigo}, Tiempo) o setTimeOut(function(){Codigo}, tiempo)");
setTimeout(() => {
    console.log("   Se ejecuta un setTimeOut despues de 1000 milisegundos");
}, 1000);
console.log("   ***setInterval");
console.log("   setInterval cuenta con las mismas tres partes que setTimeOut, la diferencia radica en la ejecucion con el tiempo definido");
console.log("   setInterval se volvera a ejecutar cada que el tiempo haya sido ejecutado. Para evitar una ejecucion infinita, necesitaremos de un contador");
var contadorInterval = 20;
var intervaloV = setInterval(() => {
    contadorInterval++;
    console.log("   Me imprimire hasta que el contador sea igual a 23. Contador:", contadorInterval);
    if (contadorInterval === 23) {
        console.log("Limite!");
        clearInterval(intervaloV);
    }
}, 1000);
console.info("Al ejecutar un timeout dentro de un metodo o una funcion, no se podra usar this para leer las propiedades del objeto contenedor.");
console.info("Se tendra que declarar una variable referenciando al this dentro del contexto en donde se encuentre el timeOut");
var objTime = {
    nombre: "Objeto Time",
    propiedades: 1,
    imprimir: function () {
        var self = this;
        console.log("   Valor de this dentro de una propiedad de un objeto:", this);
        setTimeout(() => {
            console.log("   Valor de this dentro de un setTimeOut que pertenece a una propiedad:", self);
        }, 1);
    }
};
objTime.imprimir();
