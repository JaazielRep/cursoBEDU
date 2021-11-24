console.info("#######################");
console.info("Sección 2");
//console.warn("Si se tienen mas de dos archivos JS siempre se leera en orden de arriba hacia abajo");
console.info("Se incluira el archivo JS al final del HTML con el fin de poder utilizar los objetos dentro del DOM");
console.info("#######################");
console.log(" ");
console.info("* Tipos de variables primitivas");
console.log("* Las variables son dinamicas, aunque se les haya definido cierto valor, se puede cambiar en el momento que se desee.");
var numS2 = 10;
var strS2 = "Cadena de texto";
var bolS2 = true;
var undS2 = undefined;
var nulS2 = null;
var objS2 = {
    numero: 123,
    texto: "Desc. Obj.",
    objInterno: {
        numeroHijo: 456
    }
}
console.log(numS2);
console.log(strS2);
console.log(bolS2);
console.log(undS2);
console.log(nulS2);
console.log(objS2);
console.log(" ");
console.info("* Definición de variables por valor y por referencia");
console.log(" La definicion por valor hace referencia al valor asignado a la variable mediante = ya sea un 'var X = 2'");
console.log(" La definicion por referencia 'var Z = 2; var X = Z' esta definiendo un espacio en memoria para Z, posterior a esto");
console.log("   la variable X apunta al mismo lugar en memoria, por lo tanto, ambas variables estaran apuntando al mismo lugar en memoria");
console.log("   y al momento de cambiar el valor de X o de Z se afectara para ambas variables ya que es el mismo lugar en memoria.");
//Definicion por valor
console.log("Por valor");
var aS2 = 10;
var bS2 = "texto";
console.log(aS2);
console.log(bS2);
//Definición por referencia
console.log("Por referencia");
var xS2 = {
    prop1: "textoObjeto"
};
var zS2 = xS2;
console.log(xS2);
console.log(zS2);
console.log("Se afecta el valor de zS2");
zS2.prop1 = "Texto modificado en Z";
console.log(xS2);
console.log(zS2);
console.log(" ");
console.info("* Notación de punto y corchetes");
console.log("   Esta notación es comunmente utilizada para acceder a objetos y sus propiedades");
var persona1S2 = {
    sNombre: "Jaaziel",
    sApellido: "Moreno",
    nEdad: 30,
    oDireccion: {
        sPais: "Mexico",
        sCiudad: "Mexico",
        oReferencias: {
            sEntreCalles: "entre calle 1 y 2",
            sInterior: "303",
            sExterior: "3"
        }
    }
};
console.log("   Impresión del objeto");
console.log(persona1S2);
console.log("   Impresión de las propiedades del objeto");
console.log(persona1S2.sNombre);
console.log(persona1S2.sApellido);
console.log(persona1S2.oDireccion);
console.log(persona1S2.oDireccion.oReferencias.sExterior);
//Usando notacion de punto . podemos utilizar variables para definir atajos a las propiedades en caso
//de que estas tengan varios niveles y de esta forma, poder acceder de forma más sencilla.
var oRefObjPer1 = persona1S2.oDireccion.oReferencias;
oRefObjPer1.sManzana = "Manzana 1";
console.log(oRefObjPer1);
console.log(oRefObjPer1.sManzana);
//De igual forma se puede acceder mendiante corchetes para poder realizar el retorno de valores de forma dinamica
//de esta forma podemos captar mediante un formulario el valor que queremos leer
var sParamObj1 = "sEntreCalles";
console.log(oRefObjPer1[sParamObj1]);
console.log(oRefObjPer1["sInterior"]);
console.log(oRefObjPer1["sExterior"]);
console.log(" ");
console.info("* Funciones");
console.log("   Las funciones son bloques de codigo esperando a ser ejecutadas por algun evento o invocación");
console.log("   generalmente reciben parametros que son valores con los cuales trabajara el bloque de codigo definido.");
//Al intentar imprimir el valor de aFun fuera de la funcion, nos retornara un error indicando que la variable no esta definida.
//la variable estara definida dentro de la función pero no en el objeto global, por lo tanto, solo se podra leer dentro de la funcion en donde esta definida.
//console.log(aFun);
console.log("   Definición de funcion sin variables e invocación de la misma");
function primeraFuncion(){
    var aFun = 20;
    console.log(aFun);
};
primeraFuncion();
console.log(" ");
console.info("* Parametros dentro de funciones");
console.log("   Los parametros son datos que pueden ser recibidos por las funciones y posterior a esto, realizar");
console.log("   realizar alguna acción dentro del bloque de codigo. Pueden recibir variables explicitas o anonimas.");
console.log("   Por buenas practicas, las funciones deberian ser agregadas al inicio del codigo.");
function param1Imprimir(param){
    console.log(param);
};
//las variables explicitas se definen como var = X, en este caso sera una variable anonima
param1Imprimir("Jaaziel");
console.log("   ");
console.log("   Se define una funcion con dos parametros.");
console.log("   Si un parametro no es enviado, tendra como valor 'Undefined'.");
function param2Imprimir(param, param2){
    var sValorVacio = "Agregar Valor!";
    param = param || sValorVacio;
    param2 = param2 || sValorVacio;
    console.log(param);
    console.log(param2);
};
console.log("   Impresion con parametros tipo String");
param2Imprimir(null, "jaaziel");
console.log("   Impresion con parametros tipo Object");
function param3Imprimir(param){
    console.log(param.nombre);
    console.log(param.apellidos);
    param.nombre = "Areli"
};
fn3Param = {
    nombre: "Jaaziel",
    apellidos: "Moreno Meza"
};
param3Imprimir(fn3Param);
console.log(fn3Param);
console.log("   Impresion con parametros tipo function");
function param4Imprimir(param){
    //console.log(param);
    param();
};
var fn4Param = function(){
    console.log("Soy un parametro")
};
param4Imprimir(fn4Param);
console.log(" ");
console.info("* Retorno de las funciones.");
console.log("   Las funciones pueden retornar valores primitivos, undefined, objetos y funciones.");
console.log("   Retorno de tipo numerico");
function return1(){
    return 30;
};
console.log(return1());
console.log("   Retorno de tipo cadena");
function return2(){
    return "    Hola";
};
console.log(return2());
console.log("   Retorno de tipo objeto");
function return3(){
    return {
        nombre: "Nombre",
        apellido: "Apellido"
    };
};
console.log(return3());
console.log("   Retorno de tipo funcion");
function return4(){
    return function(param){
        console.log("Soy una funcion creada por " + param);
        return function(){
            console.log("Soy una funcion anidada");
        }
    };
};
console.log(return4());
var return4Res = return4();
var return4Res2 = return4Res("Jaaziel");
return4Res2();
console.log("   ");
console.info("* Funciones de primera clase");
console.log("   Se entiende por las propiedades que se le pueden añadir a una funcion.");
console.log("   Una funcion es un objeto dentro de JS, por lo tanto, podemos definir propiedades para usar como auxiliares.");
function def1(){
    console.log("Soy una funcion de primera clase");
};
def1();
def1.supportName = "Funcion creada para demostracion de lo que significa primera clase";
def1.supportName;
console.log("   ");
console.info("* Metodos y objeto This");
console.info("  This hace referencia al objeto principal en donde se encuentra ubicado.");
var obj1 = {
    nombre: "Jaaziel",
    apellido: "Moreno",
    imrpimeNombre: function(){
        console.log("Estoy sobre las propiedades principales como: Nombre = " + this.nombre +", Apellido = " + this.apellido);
        console.log(this);
    },
    direccion: {
        pais: "México",
        obtenerPais: function(){
            console.log("Estoy dentro del contexto direccion que pertenece a obj1. Pais = " + this.pais);
            console.log(this);
            //Variable generada para poder utilizar 'This' dentro de funciones hijas.
            var self = this;
            var direccion = function(){
                console.log("Soy una funcion dentro del contexto obtenerPais que pertenece a direccion que pertenece a obj1:");
                console.log(this);
                console.warn("Para evitar que 'this' apunte al contexto global, se requiere definir una variable antes de comenzar a anidar funciones.");
                console.warn("dicha variable debera ser igualada al valor de this para poder utilizar el contexto al que pertenece.")
                console.info(self);
            }
            direccion();
        }
    }
}
obj1.imrpimeNombre();
obj1.direccion.obtenerPais();
console.log("   ");
console.info("* NEW");
console.log("   *La funcion de esta palabra reservada es poder definir un objeto vacio");
console.log("   Si bien, se podria definir como {}, al utilizar new estaremos creando un objeto vacio referenciando a una funcion")
var newObj1 = {};
console.log("   variable creada como objeto vacio:");
console.log(newObj1);
console.log("   variable creada como objeto vacio de la funcion newFn1");
function newFn1(){
    this.descEsp = "funcion para NEW";
    this.dateNew = "15/06/21";
}
var newVarFn1 = new newFn1();
newVarFn1.cadenaTexto = function(){
    return "Descripcion: " + this.descEsp + ". Fecha de creación: " + this.dateNew + ".";
}
console.log(newVarFn1);
console.log(newVarFn1.cadenaTexto());
console.log("   ");
console.warn("  *Simulador de juego");
console.warn("  A continuacion se creeara un desarrollo para simular un juego, dicho codigo utiliza una funcion de primera clase junto con metodos");
console.warn("  que nos permitiran interactuar con diferentes invocaciones de la funcion");
//Como primer paso se definira una funcion de primera clase, definiendo propiedades iniciales para los personajes a utilizar.
//Se declara con la inicial en mayuscula para hacer referencia a que trabajara como una clase
function JugadorDemo(nombreJugador){
    //Se definen las propiedades de la funcion
    //El parametro nombreJugador solo sera utilizado para definir el nombre de los personajes
    this.nombre = nombreJugador;
    this.salud = 100;
    this.energia = 100;

    //Se define un metodo para utilizar la propiedad curar, 
    //este metodo tendra un costo de 40 puntos de energia
    this.curar = function(jugadorObjetivo){
        //Se valida si nombreJugador tiene energia mayor o igual a 40 para poder usar este metodo
        if (this.energia >= 40) {
            this.energia -= 40;
            jugadorObjetivo.salud += 20;
            this.estado(jugadorObjetivo);
        }else{
            this.energia = 0;
            console.error("Sin energia suficiente para utilizar este poder")
        }
    }
    this.ataque = function (jugadorObjetivo) {
        if(this.nombre == jugadorObjetivo.nombre){
            console.error("No puedes lanzar el ataque contra ti!");
        }else{
            if(this.energia >= 40){
                if (jugadorObjetivo.salud > 40) {
                    jugadorObjetivo.salud -= 40;
                    this.estado(jugadorObjetivo);
                }else{
                    jugadorObjetivo.salud = 0;
                    console.info(jugadorObjetivo.nombre + " ha sido debilitado!!");
                }
            }else{
                console.log("Sin suficiente energia para lanzar el ataque!")
            }
        }
        
    }
    this.estado = function(jugadorObjetivo){
        console.info(this.nombre + " tu salud es de: " + this.salud + ", y tu energia de: " + this.energia + ".");
        console.info("Despues del ataque, " + jugadorObjetivo.nombre + "  ha quedado con " + jugadorObjetivo.salud + " puntos de salud y " + jugadorObjetivo.energia + " puntos de energia.")
    }
}
//Se crean los objetos y se inicializan con las propiedades definidas en la funcion
var curandero = new JugadorDemo("Curandero");
var arquero = new JugadorDemo("Arquero");
console.warn("  TERMINA SIMULADOR DE JUEGO");
console.log("   ");
console.info("* Prototypes");
console.log("*  Los prototipos permiten expandir las propiedades de los objetos.");
console.log("*  Generalmente se utilizan para eficientar el uso de objetos mediante funciones/metodos que pueden ser reutilizadas.");
console.info("* Al declarar una variable, en automatico JS le asigna un prototipo determinado a ese tipo de dato, por ejemplo:");
console.info("  var a = 5; a.indexOf; el metodo indexOf es un prototipo asignado al momento de declarar la variable.");
console.info("  incluso, si quisieramos añadir un prototipo a todas las variables de tipo nombre solo bastaria realizar un prototipo en general:");
console.info("  Number.prototype.funcionPersonalizada = function(){...}.");
//Definimos una funcion con letra mayuscula para referirla como una clase
//Dentro de esta clase incluiremos propiedades con datos fijos
function ProtoPersona(){
    this.nombre = "Jaaziel";
    this.apellido = "Moreno";
    this.edad = 30;
//    this.imprimeDatos = function(){
  //      console.log("Tu nombre es: " + this.nombre + ", tu apellido es: " + this.apellido + " y tu edad es de " + this.edad + " años");
    //}

}

//Al definir un prototipo podemos reutilizar codigo de forma dinamica para no repetir en este caso
//la funcionalidad de imprimeDatos()
ProtoPersona.prototype.imprimeDatos = function(){
    console.log("Tu nombre es: " + this.nombre + ", tu apellido es: " + this.apellido + " y tu edad es de " + this.edad + " años");
};
//Al utilizar el objeto dentro de la consola del navegador, podremos encontrar este metodo dentro del apartado prototipos
//NO FUNCIONA ->
//Number.prototype.protoNumber1 = function(){
//    return true;
//};
//
var protoImprime = new ProtoPersona();
protoImprime.imprimeDatos();
console.log("   ");
console.info("* Typeof & instanceof");
console.info("* typeof nos permite saber de que tipo es una variable e instanceof nos permitira saber si una variable es referencia de un objeto.");
console.info("  Ambas palabras reservadas nos ayudaran a poder realizar validaciones.");
function typeFunction(param){
    console.log(typeof param);
    console.log(param instanceof instancePersona)
}
function instancePersona(){
    this.nombre="Objeto";
}
var ofJaaziel = new instancePersona();

typeFunction(ofJaaziel);
