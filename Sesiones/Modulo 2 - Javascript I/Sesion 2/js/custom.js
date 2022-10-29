/*  Funcion expresada   */

//Funciona
console.log(fn_declarada1());

function fn_declarada1(){
    const mensaje = "Funcion expresada";
    return mensaje;
}

//Funciona
console.log(fn_declarada1());

/*  Funcion  expresada  */

//No funciona
//console.log(fn_expresada1());

const fn_expresada1 = function(){
    const mensaje = "Funcion declarada"
    return mensaje;
}

//Funciona
console.log(fn_expresada1());

/*  Funcion flecha  */

//No funciona
//console.log(fn_flecha1)

const fn_flecha1 = () => {
    const mensaje = "Funcion flecha 1"
    return mensaje;
}

console.log(fn_flecha1);

/*  Funcion flecha con retorno implicito    */

const fn_flecha2 = param1 => "Mensaje = " + param1;

console.log(fn_flecha2("Funcion flecha 2"));

/*(function () {
    alert("HOLA")
})();
*/

//https://dev.to/gdcodev/25-metodos-de-arrays-en-javascript-que-todo-desarrollador-debe-conocer-4a2d


/*  ##### RETO 2 ##### */
//Espera un click en el boton btn_mayorque
document.getElementById("btn_mayorque").addEventListener("click", function(){
    //Obtiene los valores de numero1 y numero2 mediante prompt
    let numero1 = prompt("Digita el numero 1");
    let numero2 = prompt("Digita el numero 2");

    //Invoca funcion mandando parametros
    getLergerInt(numero1, numero2)
})

//Recibe dos parametros y compara su valor para detectar cual es el mayor
const getLergerInt = (number1, number2) => number1 > number2 ? alert(`${number1} es mayor`) : alert(`${number2} es mayor`)



/*  ##### RETO 3 ##### */
//Se define array
var singers = [
    { name: 'Steven Tyler', band: 'Aerosmith', born: 1948 },
    { name: 'Karen Carpenter', band: 'The Carpenters', born: 1950 },
    { name: 'Kurt Cobain', band: 'Nirvana', born: 1967 },
    { name: 'Chris Cornell', band: 'Soundgarden', born: 1964 },
];

//Espera un click en el boton btn_cantantes
document.getElementById("btn_cantantes").addEventListener("click", function(){
    //obtiene el valor de param mediante un prompt
    let param = prompt("Digita la propiedad que desees ver 'name, band o born'");

    //Invoca funcion
    pluck(singers, param)
});


//Recibe dos parametros; un array de objetos y la propiedad a la que se deseara acceder
function pluck(list, propertyName) {
    //Se define variable para almacenar mensaje a mostrar y variable que tomara el valor del parametro que indicara la propiedad
    let cadenaMensaje = "";
    let propiedad = propertyName;

    //Si la propiedad es igual a cualquiera de los tres valores
    if(propiedad === "name" || propiedad === "band" || propiedad === "born"){
        //Recorre todo el array y concatena el objeto de cada posicion con el valor de la propiedad indicada
        for (let index = 0; index < list.length; index++) {
            if(index > 0){
                cadenaMensaje += `, ${list[index][propiedad]}`
            }else{
                cadenaMensaje += `${list[index][propiedad]}`
            }
        }
        //Muestra mensaje que se creo
        alert(cadenaMensaje);
    }else{
        //Error en recepcion de datos
        alert("Propiedad no encontrada");
    }
    
}