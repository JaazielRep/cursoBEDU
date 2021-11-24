/*
    Manejo de errores: Try, catch, finally
*/
console.info("* Manejo de errores");
console.log("   El manejo de errores básicos funciona con try y catch, se puede añadir Finally que siempre se ejecutara");
console.log("   Siempre que se use el try debera estar acompañado de el catch o el finally");
try{
    var trai1 = 100;
    console.log("   Estoy dentro del try");
    //throw " Soy un error forzado"
    //throw {nombre:"error"};
    //throw function(){
      //  console.log("Hay un error")
    //}
    throw new Error ("Error manual");

}catch(e){
    console.error("   ERROR: ", e);
    tryCatch(e);
    //e()
}finally{
    console.log("   Estoy dentro del finally");
}
function tryCatch(paramE){
    var dFecha = new Date();
    console.log("Se registro el error: " + paramE + "\na las: " + dFecha)
}
console.log("   ");
console.info("* Funciones prestadas");
console.info("* Los objetos y funciones pueden prestar sus propiedades dentro del objeto global, esto se puede lograr mediante");
console.info("* call(), bind() & apply()");
var objCarro1 = {
    color:"blanco",
    marca:"Mazda",
    imprimir:function () {
        var salida = this.marca + " - " + this.color;
        return salida;
    }
};
var objCarro2 = {
    color: "Azul",
    marca: "Mazda2"
}
console.log(objCarro1.imprimir());
console.log("   Ahora se declara una funcion utilizando this que apunta al objeto global para buscar una funcion, al no encontrarla,");
console.log("   se utilizara bind() para buscarla dentro del objeto declarado en un inicio.");
var funCarro1 = function(){
    this.nombre = "funcion carro";
    console.log(this.nombre);
    console.log("Propiedades de ObjCarro1 desde funcion: ", this)
    console.log("metodo imprimir desde funcion:", this.imprimir())
}
var bindObjCar = funCarro1.bind(objCarro1);
console.log("   Al realizar un bind() se estan prestando prestadas las propiedades del objeto o funcion seleccionado");
bindObjCar();
console.log("   Por otro lado, al realizar un call, estaremos invocando de igual manera las propiedades del objeto seleccionado y \npodremos utilizarlas en la funcion en donde estamos realizando el call()")
console.log("   Las propiedades del objeto que esta haciendo el call, reemplazara los valores si es que las propiedades tienen el mismo nombre que el objeto invocado.");
console.log(objCarro1.imprimir.call(objCarro2));
console.log("   ");
console.info("  IF");
var ifA = 10;
var ifB = 20;
var ifC = (ifA>ifB) ? function () {
    console.log("A es mayor que B");
    return ifA;
}() : function(){
    console.log("B es mayor que A");
    return ifB;
}();
console.log(ifC);
console.log("   ");
console.info("  JSON");
console.info("https://www.json.org/json-es.html");
console.info("http://json.parser.online.fr/");
console.info("* JSON (JavaScript Object Notation) es una notación orientada a comunicaciones entre plataformas mediante objetos");
var objetoJS = {
    nombre: "ObjetoJS",
    lineas: 3,
    imprime: function () {
        console.log(this.nombre, this.lineas);
    }
};
console.log("   ObjetoJS:", objetoJS);
var JSONobjetoJS = JSON.stringify(objetoJS);
console.log("   JSON.stringify:", JSONobjetoJS);
var objetoJSON = JSON.parse(JSONobjetoJS);
console.log("   JSON.parse:", objetoJSON);

/*
3 guardias presenciales al año en sabado
L - V de 08:00 a 18:00
Sin Estacionamiento
Magnocentro
24
Bono cuatrimestral conforme a objetivos - hasta un mes de sueldo
Contratacion directa 3 meses de prueba e indefinido posterior
60% ante el IMSS
40% como otras percepciones
*/