/*
    Beginner's guide to programming code with javaScript
*/


/*
    •Starts in 1995 •JIT (Just In Time) •The script is read top to bottom, left to right 
    •Camel casing (toWriteThisWay) •
*/

//Chapter 3: Data and Javascript variables
console.log("Chapter 3: Data and Javascript variables");

var Name = "";
var age = 0;

Name = "TEST";
age = 31;

console.log("### Chapter 3:");
console.log(Name);
console.log(age);

//Chapter 4: Math with Javascript
console.warn("");
console.log("Chapter 4: Math with Javascript");

var apples = 5, oranges = 10;
var piecesOfFruit = apples + oranges;

console.log("*Pieces of Fruit = " + piecesOfFruit);

var piecesForEachPerson = piecesOfFruit / 3;

console.log("*Pieces for each person = " + piecesForEachPerson);

    //Always the operation inside the parentheses go first then * and / and al last + and }
console.log((10+2)/2+4*2); //10+2 = 12. 12/2 = 6. + 4*2 = 8. 6*8 = 14.
console.log(12/12+4*2);
console.log(6+4*2);
console.log(6+8);

//Chapter 5: Logic
console.warn("");
console.log("Chapter 5: Logic");

    //Equality ===
console.log("*Equal")
console.log("15.234 === 15.234: ");
console.log(15.234 === 15.234);
        //If we add text to a TRUE comparasion, the result will be different
console.log("* 15.234 === 15.234 ? " + 15.234 === 15.234);

    //Not equal
console.log("*Not equal");
//console.log(15.234 !=== 18.4545); // !=== doesn't work anymore
console.log("15.234 !== 18.4545:");
console.log(15.234 !== 18.4545);

console.log("'10' === 10: ");
console.log('10' == 10);

    //Greater than / less than
console.log("Greater than / less than");
console.log("10 > 5: ");
console.log(10 > 5);
console.log("20.4 < 20.2: ");
console.log(20.4 < 20.2);
console.log("10 >= 10: ");
console.log(10 >= 10);
console.log("10 <= 5: ");
console.log(10 <= 5);

//Chapter 6: Conditions
console.warn("");
console.log("Chapter 6: Conditions");
    //if / if-else
console.log("*if / if-else");
console.log("*Si 1 es mayor que 2 se imprime 'mal', de lo contrario se imprime 'Dos es mayor'");
if(1 > 2){
    console.log("*mal");
}else{
    console.log("*Dos es mayor")
}

//Chapter 7: Looping
console.warn("");
console.log("Chapter 7: Looping")

    //While
var cadenaWhile = "";
var contador = 1;
while (contador < 10){
    cadenaWhile += contador + ", ";
    contador += 1;
}
console.log("String made with WHILE: " + cadenaWhile);
    //For, first part declares the value of the variable, 
        //second creates the condition and the last one will be run at the end of every loop
var cadenaFor = "";
for (let index = 1; index < 10; index++) {
    cadenaFor += index + ", ";
}
console.log("String made with For: " + cadenaFor)

//Chapter 8: Functions
console.warn("");
console.log("Chapter 8: Functions")

var add = function (a, b){
    return a + b;
}

var result = add(1, 2);

console.log("Value from function add: " + result);

//Chapter 9: Object located
console.warn("");
console.log("*Chapter 9: Object located")

    //A simple object just has properties like a basic description of a human: Color, Eyes, Hair...
    //An object with abilities like, move, talk, breath, etc... Is called METHOD.
    //We can acces to the basic properties by a dot human.hair, human.color, human.move(), etc...
var jedi = {
    Name: "Luke",
    Age: 899,
    Talk: function(){
        return "Hi! I'm Luke";
    }
}

console.log(jedi);
console.log(jedi.Name);
console.log(jedi.Talk());
console.log("*Adding more properties to the object");

jedi.lightSaber = "Blue";

console.log(jedi.lightSaber);

console.log("*Nested object");

var person1 = {
    Age: 30,
    Name: {
        First: "Luke",
        Last: "Skywalker"
    }
};

console.log(person1.Age)
console.log(person1.Name.First);

console.log("*Adding more properties to the object person1");

person1.Addres = {
    zipCode: 25987,
    Street: "1rst"
};

console.log(person1.Addres.zipCode);

console.log("*Empty object");
var Dog = {};
Dog.bark = function(){
    console.log("I'm barking");
    return "GuaGua!!";
};
console.log(Dog.bark());

//Chapter 10: Arrays
console.warn("");
console.log("*Chapter 10: Arrays");

var emptyArray = [];
var shoppingList = ['Rice', 'Soda', 'Buns'];

console.log("*Element 1 inside the list: ");
console.log(shoppingList[1]);

console.log("*Setting a value on position 1: ");
shoppingList[1] = 'Chips';
console.log(shoppingList[1])

    //.push('value') will add a new item to the list
    //.pop() will remove an item from the list

shoppingList.push('eggs');

var weNeedThis = function(param) {
     return "We need: " + param;
}

shoppingList.push('Carrots');
shoppingList.push('Beer');
shoppingList.pop();

for (let index = 0; index < shoppingList.length; index++) {
    var listPrint = weNeedThis(shoppingList[index]);
    console.log(listPrint);
}


/*
curso 2x1.
Prueba de ubicacion de nivel.
8 niveles - 3 basicos - 3 intermedios - 3 avanzados.
Clases grupales ilimitadas de 7 a 9 estudiantes.
Se debe estar en el mismo nivel.
Gramatica y conversacional.
NO se obliga a un horario fijo.
34,000 profesores norteamericanos.
2 planes - Año (4 a 5 horas semanales) - 6 meses (1 hora diaria).
Cada media hora hay una clase y duran 45 min, cuentan con material de apoyo.
Las clases que quiera sin costo adicional.
No se genera gasto por libro. Todo es electronico. Expresiones comunes.
Todas las clases son en vivo y directo.
Certificaciones por open english. Bajo marco europeo.
Anual       - 46,051 - $18,026.
Semestral   - 31,841 - $12,933.
Reembolso total antes de 7 días.
*/