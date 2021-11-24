var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
console.warn("***Archivo cargado***");
console.log("   ");
console.info("TIPOS DE DATOS");
console.info("En typeScript existe inferencia de datos, esto significa que una variable podra tener solo un tipo de dato y no podra ser de otro tipo hasta ser convertida");
//Variables
var string1 = "Dato cadena";
var string2 = "Var String";
var number1 = 10;
var boolean1 = true;
var variableAny = "Hola, soy una variable any y puedo tener cualquier valor";
//Arrays
var stringArray1 = ["a", "b", "c"];
var numberArray1 = [1, 2, 3];
var booleanArray = [true, false];
var anyArray1 = [true, "a", 5, { nombre: 'ArrayAny' }];
var tupleArray1 = [20 + "", 2, true];
//void, null, undefined
var variableNull1 = null;
var variableVoid1 = undefined;
var variableUnde1 = null;
console.log("   ");
console.log("Datos primitivos");
console.log("imprimiendo variable sin tipo = ", string1);
console.log("Reasignando el valor = ", string1 = 22 + "");
console.log("Variable tipo :string = ", string2);
console.log("Variable tipo :number = ", number1);
console.log("Variable tipo :boolean = ", boolean1);
console.log("Variable tipo :any = ", variableAny);
console.log("Variable tipo :any = ", variableAny = 20);
console.log("   ");
console.log("Arrays");
console.log("Array tipo :string[] =", stringArray1);
console.log("Array tipo :number[] =", numberArray1);
console.log("Array tipo :boolean[] =", booleanArray);
console.log("Array tipo :any[] =", anyArray1);
console.log("Array tipo tuple, solo valida los valores asignados, posterior no acepta mas datos :[string, number, boolean] =", tupleArray1);
console.log("   ");
console.log("void, null, undefined");
console.log("Variable de tipo null = ", variableNull1, typeof (variableNull1));
console.log("Variable de tipo void = ", variableVoid1, typeof (variableVoid1));
console.log("Variable de tipo undefined = ", variableUnde1, typeof (variableUnde1));
//Funciones
var suma1 = function (param1, param2) {
    if (typeof (param1) === "string") {
        param1 = parseInt(param1);
    }
    if (typeof (param2) === "string") {
        param2 = parseInt(param2);
    }
    return param1 + param2;
};
function nombre1(param1, param2) {
    if (param2 === undefined) {
        return param1;
    }
    return param1 + " " + param2;
}
function obj1(params) {
    return params.nombre + " " + params.apellido;
}
var varObj1 = { nombre: "Jaaziel", apellido: "Moreno" };
console.log("   ");
console.log("Funciones");
console.log("Llamando funcion suma1(10, 5) =", suma1(10, 5));
console.log("Llamando funcion suma1('10', 5) =", suma1('10', 5));
console.log("al declarar un parametro se puede colocar un ? al final para indicar que es opcional");
console.log("Llamando funcion nombre1('Jaaziel') =", nombre1("Jaaziel"));
console.log("Llamando funcion nombre1('Jaaziel', 'Moreno') =", nombre1("Jaaziel", "Moreno"));
console.log("Llamando funcion obj1(varObj1) =", obj1(varObj1));
//Clases
//Un programa se divide en diferentes componentes que tienen metodos o comportamientos diferentes
//El constructor dentro de la clase sirve para poder recibir valores y utilizarlos dentro de la clase
//Cuando se ejecute la clase o se instancie (asigne a una variable new Clase()) el constructor se ejecutara automaticamente
var Usuario1 = /** @class */ (function () {
    function Usuario1(param1, param2, param3) {
        this.nombre = param1;
        this.mail = param2;
        this.edad = param3;
    }
    Usuario1.prototype.imprime = function () {
        return "Usuario registrado: " + (this.nombre + " " + this.mail + " " + this.edad);
    };
    Usuario1.prototype.claseHereda = function () {
        console.log("Hola", "" + this.nombre);
    };
    return Usuario1;
}());
//Al instanciar la clase, se deberan de informar los parametros definidos en el constructor
var varClase1 = new Usuario1("Jaaziel", "jaaziel@j.com", 30);
console.log("   ");
console.log("Clases");
console.log("Las propiedades de las clases pueden ser publicas, protejidas o privadas para no permitir el acceso");
console.log("Intentando acceder a la propiedad Nombre", varClase1.nombre);
console.log("Intentando acceder a la propiedad edad", varClase1.edad);
console.log(varClase1.imprime());
console.log("   ");
console.log("Herencia");
console.log("En este caso la clase Usuario1 heredara sus propiedades y metodos a la clase Miembros1");
console.log("Al heredar las propiedades desde el constructor de la nueva clase, se debe colocar dentro de el el metodo super()");
console.log("las propiedades heredaras dentro del constructor de la clase hijo, deberan tener el mismo nombre que la clase padre");
var Miembros1 = /** @class */ (function (_super) {
    __extends(Miembros1, _super);
    function Miembros1(idParam, nombre, mail, edad) {
        var _this = _super.call(this, nombre, mail, edad) || this;
        _this.id = idParam;
        return _this;
    }
    Miembros1.prototype.imprime2 = function () {
        _super.prototype.claseHereda.call(this);
    };
    return Miembros1;
}(Usuario1));
var varClase2 = new Miembros1(1, "Jaaziel", "correo", 30);
console.log(varClase2.id);
console.log(varClase2.nombre);
console.log(varClase2.imprime2());
