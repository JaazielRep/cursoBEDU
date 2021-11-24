// DOM Document Object Modelo
//Principal parents are <HEAD> and <BODY>

//We need to use the object document before the instruction

//getElementById - get The object using an id asigned to it

console.warn("We need to add the JS file after the DOM");
console.warn("if we put it inside the HEAD the elements don't exist at that moment");
console.warn("so, we need to add the code at the end of the DOM or use a function");
console.warn("that let us use the JS code after the DOM");

console.info("Chapter 11: The DOM");

console.log("*document object");
console.log(document);

console.log("*getElementById: Get an specific element with propertie id='firstDiv'");
var objectOne = document.getElementById("firstDiv");
console.log(objectOne);

console.log("*getElementsByTagName: Get the DOM elements that we required in this case all the <li> elements");
var objectTwo = document.getElementsByTagName("li");
console.log(objectTwo);

console.log("*getElementsByClass: Get all the elements with an specific propertie Class");
var objectThr = document.getElementsByClassName("test1");
console.log(objectThr);

console.log("*querySelector: Get an specific element inside the DOM searching by a selector");
var objectFor = document.querySelector("#firstDiv");
console.log(objectFor);

console.log("*querySelector: Get an specific group of elements inside the DOM searching by a selector");
var objectFor = document.querySelectorAll("#firstDiv, .test1");
console.log(objectFor);

console.info("");
console.info("Chapter 12: Callbacks and Events");

console.warn("*A callBack is  something that we're going to do after any situation");
console.warn("*in this case, we're using the DOM object 'button1'.");
console.warn("*we've defined a function that is going to do something");
console.warn("*then, we're going to get the object that we want to use");
console.warn("*and finally, we'll be using addEventListener that is the method that will be");
console.warn("*waiting/listening for the click event inside de DOM in an object with ID 'button1'");

var whatIwantToDo = function (event){
    console.log("There was a click!!");
}
var domButton1 = document.querySelector("#button1");
domButton1.addEventListener("click", whatIwantToDo);

console.info("");
console.info("Chapter 13: AJAX (Asynchronous Javascript And XML)");

var req = new XMLHttpRequest();
console.log(req.open('GET', 'ajax.txt',true));
//console.log(req.send());
console.log(req);

console.info("");
console.info("Chapter 14: JSON (JavaScript Object Notation)");

var jsonObject = {make:"McLaren", Model: "MP4-12C", Miles: 5023};
console.log("*JSON Object:");
console.log(jsonObject);
var jsonString = JSON.stringify(jsonObject);
console.log("*JSON.stringify:");
console.log("stringify convert the object to a String")
console.log(jsonString);
console.log("*JSON.parse");
console.log("parse will convert a text string to an object");
var carObject = JSON.parse(jsonString);
carObject.yearModel = 2021;
console.log(carObject);

console.info("");
console.info("Chapter 15: Scopes");

console.log("*Scope refers to the action where the variables are goin to be");
console.log("   We can declare a varible inside of a function and we'll");
console.log("   only can use it inside of the function");

console.log("*** WORKS");
console.log("Example 1 ***It doesn't works");
console.log("var b will be declared inside of one if");
var a = 10;
console.log("value of a: " + a);
if(a > 5){
    var b = 5;
    console.log("value of b inside the IF: " + b);
}
console.log("value of b out of the function: " + b);
var c = a + b;
console.log("value of c: " + c);
console.log("*** WORKS");

console.log("*** IT'S IMPORTANT TO REMEMBER THAT YOur CODE NEEDS TO READ MORE THAN It IS WRITEN");

console.log("*Example 2");
console.log("*Function scope");
console.log("The variable a is going to work only inside the function");
var doSomething = function(){
    var a = 10;
};
console.log(doSomething());
console.log(a);

console.log("Example 3: Child scopes");
console.log("There will be a function inside of another function");
console.log("the variable a has been declared into the first function");
console.log("and we'll call it inside the second function");

var doSomething2 = function(){
    var a = 10;
    var doSomethingElse = function(){
        console.log("**Calling a inside the second function: ");
        console.log(a)
    };
    console.log("**Calling the second function: ");
    doSomethingElse();
}
console.log("**Calling the first function \nthis function has a nested function called doSomethingElse ");
console.log("and that second function will display the value of a variable declared inside de first function")
doSomething2();