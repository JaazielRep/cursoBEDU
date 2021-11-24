console.info("* Array");
console.info("  Los Array son conjuntos de datos almacenados dentro de [  ].");
console.info("  Los array pueden contener diferentes tipos de datos, primitivos, objetos, incluso anidar mas array.");
var arraySimple = [1, 2, 3, 4, 5];
console.log("   Imprimimos un array con numeros");
console.log(arraySimple);
arraySimple.reverse();
console.log("   Utilizamos el metodo reverse() para colocar los numeros de atras hacia adelante");
console.log(arraySimple);
arraySimple = arraySimple.map(function(param){
    return param
});
console.log("   Utilizamos el metodo map que hara iteracion con los elementos del array.");
console.log("   Realiza la misma tarea que un ciclo for, solo debemos enviar como parametro una funcion con un parametro propio y retorne este mismo");
console.log(arraySimple);
arraySimple = arraySimple.map(Math.sqrt);
console.log("   Ahora obtendremos la raiz cuadrada de cada elemento");
console.log(arraySimple);
arraySimple = arraySimple.map(function (params) {
    params *= params;
    return Math.round(params);
});
console.log("   Retornamos el resultado de sqrt() al numero original del array");
console.log(arraySimple);
arraySimple = arraySimple.join("|");
console.log("   con el metodo join() obtendremos el array separado por el simbolo que indiquemos dentro del metodo");
console.log(arraySimple);
//arraySimple = arraySimple.split();
arraySimple = arraySimple.split("|");
console.log("   Al utilizar split() se cortara el arreglo, si no se mandan parametros, sera un solo elemento, en este caso indicamos como parametro '|'");
console.log("   por lo tanto, el elemento se partira cada que encuentre un simbolo | y añadira lo siguiente como un elemento mas.");
arraySimple.push("a");
console.log("   Se añade un nuevo elemento al final del array con el metodo push() indicando dentro lo que se incluira en el array");
console.log(arraySimple);
arraySimple.unshift("0");
console.log("   Se añade un nuevo elemento al inicio del array mediante el metodo unshift() indicando como parametro el elemento a añadir");
console.log(arraySimple);
/* console.log(arraySimple);
arraySimple = arraySimple.map(function(param){
    var nparam = parseInt(param);
    if (typeof nparam == "number") {
        return nparam;
    }
});
console.log(arraySimple);*/
console.log("   Se convierte el array en cadena, a diferencia de join() con toString() no mandamos parametros, por lo tanto, es mas eficaz.")
console.log(arraySimple.toString());
var popArray = arraySimple.pop();
console.log("   Con el metodo pop() eliminaremos el ultimo elemento del array");
console.log(arraySimple, popArray);
arraySimple.splice(1, 5, "1");
console.log("   splice() sirve para poder eliminar elementos dentro del arreglo, a diferencia de pop, en splice debemos indicar en que posicion removera elementos y");
console.log("   separador por coma, cuantos elementos eliminaremos splice(1,4) eliminara 4 elementos comenzando por la posicion 1 del array.");
console.log("   Incluso se puede añadir un elemento despues de remover los elementos: splice(1,5,'1')");
console.log(arraySimple);
arraySimple.splice(2, 0, "2", "3", "4", "5");
console.log("   slice() puede aceptar mas de una sola incersion y no necesariamente requiere de eliminar elementos para poder agregar mas: slice(1, 0, '2', '3'...).");
console.log(arraySimple);
arraySimple = arraySimple.slice(0, 4);
console.log("    slice() nos ayudara a obtener una parte del arreglo, indicando como parametro de donde empieza y donde termina el apartado del arreglo que queremos");
console.log(arraySimple);
var arraySimple2 = [
    true,
    {
        nombre:"Jaaziel",
        apellido:"Moreno"
    },
    function(){
        console.log("   ME ejecuto desde la funcion dentro de un arreglo");
    },
    function(param){
        console.log("   recibí como parametro un objeto y estas son sus propiedades:")
        console.log(Object.keys(param).length);
        //console.log(Object.keys(param)[0]);
        console.log(param.nombre + " " + param.apellido);
    },[
        "array2",
        [
            "array3",
            function () {
                console.log(this)
            }
        ],
    ]
];
console.log("   Definimos un array con diferentes elementos; boleanos, objetos y funciones");
console.log(arraySimple2);
for (let index = 0; index < arraySimple2.length; index++) {
    console.log(arraySimple2[index]);
}
console.log("   Para invocar una funcion dentro de un array basta con invocar el array junto con la posicion de la funcion");
arraySimple2[2]();
arraySimple2[3](arraySimple2[1]);
console.log(arraySimple2[4][1][1]);
arraySimple2[4][1][1]();
console.log("   ");
console.info("* Argumentos");
console.info("* Los argumentos son los valores de los parametros recibidos por una funcion. Estor argumentos forman parte de la definicion de una funcion");
function arguFuncion(a , b, c, d){
    if (arguments.length !== 4) {
        console.log("Se requieren 4 parametros de tipo entero")
        //Si se coloca un return el codigo se detiene
        return;
    }
    console.log("   Estos son los argumentos: ");
    console.log(arguments);
    console.log("   Esta es la suma de los argumentos: ")
    console.log(a + b + c + d);
}
arguFuncion(10, 20, 30, 40);
console.log("   ");
console.info("* Sobre carga de operadores");
console.info("* En otros lenguajes se podria interpretar como definir una funcion varias veces con diferentes parametros");
console.info("* En general hace referencia al asignar valores a los parametros si estos no fueron informados al momento de invocar la funcion");
function sobrecargaOp(param1, param2){
    param1 = param1 || "VACIO";
    param2 = param2 || "VACIO";

    console.log("Se recibio como parametro 1 = " + param1 + " y como parametro 2 = " + param2);
}
function sobrecargaOp2(paramX){
    sobrecargaOp(paramX, 10);
}
function sobrecargaOp3(paramY) {
    sobrecargaOp("Valor fijo", paramY);
}
console.log(" Invocacion de la funcion sobrecargaOp indicando solo el primer parametro");
sobrecargaOp("Valor 1");
console.log("Invocacion de la funcion sobrecargaOp2 indicando su unico parametro y dentro de esta funcion se invoca a sobrecargaOp enviando como valor de su primer parametro al recibido por sobrecargaOp2");
sobrecargaOp2("Valor 2");
console.log("Invocacion de la funcion sobrecargaOp3 indicando su unico parametro y dentro de esta funcion se invoca a sobrecargaOp enviando como valor de su primer parametro al recibido por sobrecargaOp2");
sobrecargaOp3(800);
console.log("   ");
console.info("* Polimorfismo");
console.info("* Hace referencia al uso de funciones que pueden recibir diferentes tipos de parametros");
function polimorfDato(param){
    var typeOfParam = typeof param;
    console.log(typeOfParam);
    if (typeOfParam == "number") {
        console.log("   Soy un numero");
    }
    if (typeOfParam == "string") {
        console.log("   Soy un texto");
    }
    if (typeOfParam == "object") {
        var objCad = "Soy un objeto ";
        if (param instanceof Number) {
            console.log(objCad + "numerico");
        }
    }
    return true;
}
console.log("   ");
console.info("* Contexto de funciones");
console.info("* El contexto se puede entender como un bloque de codigo especifico, al declarar una funcion, todo el codigo que contenga estara dento de su contexto.");
console.info("  De igual forma, fuera de la funcion, existe el contexto global que es el apartado JS del navegador, en donde se almacenara todo nuestro codigo.");
console.info("  Por lo tanto, nuestras funciones o contextos, seran parte del contexto global.");
function context1(){
    var arrayC1 = [];
    //numeroC1 vale 1
    var numeroC1 = 1;

    arrayC1.push(function(){
        //numeroC1 vale 2 al invocar este metodo y se le suma 1, por lo tanto, ahora valdra 3
        numeroC1 += 1;
        console.log(numeroC1);
        return true
    });

    //Se agrega un elemento al array, este será una funcion anonima que esta siendo llamada y envia como parametro el valor de numeroC1
    arrayC1.push(
        //se declara la funcion que recibira el parametro enviado en la funcion anonima
        (
            function(parametro){
                return function(){
                    console.log(parametro)
                }
            }
        )(numeroC1)
    );

    //numeroC1 vale 2
    numeroC1++

    return arrayC1;
}

console.warn("Si las funciones son invocadas y estas no estan regresando algun valor, el resultado sera UNDEFINED.");
console.log("   Se declara un array dentro de la funcion, este array sera lo que se retornara al invocar la funcion");
console.log("   Se invoca la funcion y se accede al primer elemento del array que es una funcion anonima e imprime una variable declarada en el contexto de la funcion context1");
//context1()[0]();
var context1ret1 = context1();
context1ret1[0]();
context1ret1[1]();

console.warn("***************************** Funciones anonimas");
console.warn("Las funciones anonimas son declaradas de la siguiente forma:");
console.warn("(function(){...})()");
console.warn("como se puede ver, se compone de dos parentesis ()() en donde el primero debera contener una funcion sin nombre y el segundo");
console.warn("sera el encargado de realizar la invocacion de lo que se esta declarando en el primero");
console.error("antes de declarar una funcion anonima, la linea de codigo previa a esta, debe llevar ;");
(function(){
    console.log("Soy una funcion anonima sin parametros");
})();
console.warn("De igual forma, si en el segundo parentesis colocamos cualquier valor, lo tomara como un argumento enviado al momento de invocar la funcion");
console.warn("por lo tanto, si en el primer parentesis declaramos una funcion con un parametro, este parametro tendra el valor que fue enviado como argumento en el segundo parentesis");
(function(param){
    console.log("Soy una funcion anonima con un parametro que recibe el valor del segundo parentesis de la funcion anonima");
    console.log(param)
})(3);
(function(param, param2){
    console.log("Accediendo a los dos parametros de la funcion anonima, el segundo no se informo como argumento al invocarla");
    console.log(param, param2)
})(1);
console.warn("***************************** Funciones anonimas");
console.log("   ");
console.info("* Objetos");
console.info("* new Number()");
var varObjNum = 3.1416;
console.log("   Soy una variable numerica");
console.log(varObjNum);
var objNum = new Number (3.1416);
console.log("   Soy una variable de tipo Objeto Numerico");
console.log(objNum);
console.log(" utilizando el metodo toFixed(2)");
console.log(objNum.toFixed(2));
console.log(" utilizando el metodo toPrecision(3)");
console.log(varObjNum.toPrecision(4));
console.info("* new Boolean");
var varObjBol = true;
console.log("   Soy una variable de tipo boleano");
console.log(varObjBol);
var objBol = new Boolean (" ");
console.log(" Si un objeto de tipo boleano es iniciado con '', 0, -0, null, false, NaN o Undefined nos dara como valor false(0)");
console.log(objBol);
console.log(objBol.valueOf());
console.info("* new String");
console.info("* El objeto String contendra cada letra como el valor de un propiedad dentro del mismo objeto");
var objStr = new String("Jaaziel");
console.log("   Impresion del objeto de tipo texto");
console.log(objStr);
console.log("   Mayus y Minus");
console.log(objStr.toUpperCase());
console.log(objStr.toLowerCase());
console.log(" Italicas");
console.log(objStr.italics());
document.write(objStr.italics());
console.log("   ");
console.info("* new Date");
console.info("* momentjs.com");
var objDate = new Date();
var objDate2 = new Date(0);
var objDate3 = new Date(1990, 10, 1, 23, 23, 23, 10);
console.log("   Fecha actual");
console.log(objDate);
console.log("   Fecha 0, la mas antigua");
console.log(objDate2);
console.log("   Fecha fija");
console.log(objDate3);
console.log("   Extracción de propiedades");
console.log(objDate.getFullYear());
console.log(objDate.getMonth());
console.log(objDate.getDate());
var objDate4 = new Date();
console.log("   Tiempo de ejecucion desde objDate y objDate4");
console.log(objDate4.getTime() - objDate.getTime(), "Milisegundos");
console.log((objDate4.getTime() - objDate.getTime())/1000, "segundos");
console.log("   ");
console.info("* Ejercicios con fechas");
var obDateEx = new Date();
Date.prototype.sumarDiasObj = function (params) {
    this.setDate(this.getDate() + params);
    return this;
};
Date.prototype.sumarAnioObj = function (params) {
    this.setFullYear(this.getFullYear() + params);
    return this;
};
console.log(obDateEx.sumarAnioObj(2));
console.log("   ");
console.info("* Objeto Math");
var mathPI = Math.PI;
var mathE = Math.E;
console.log("   Valor de Math.PI = ", mathPI);
console.log("   Valor de Math.E = ", mathE);
var objVarDateEx = 10.13467924;
console.log("   Valor de variable objVarDateEx = ", objVarDateEx);
console.log("   Uso del metodo round() = ", Math.round(objVarDateEx));
console.log("   Uso del metodo round() añadiendo decimales = ", Math.round(objVarDateEx*100)/100);
console.log("   El metodo floor() retornara el valor sin redondeo = ", Math.floor(objVarDateEx));
Number.prototype.objMathRnd = function(param, param2){
    return Math.floor(Math.random() * (param2-param + 1) + param);
}
console.log("   ");