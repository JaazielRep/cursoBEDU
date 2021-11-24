console.warn("   ES5 a ES6   ");
console.log("   ");
console.info("Declaracion de variables con let, cons y var");
var variable1_1 = "Soy una variable declarada con var";
let variable1_2 = "Soy una variable declarada con let";
const variable1_3 = "Soy una variable declarada con const";
console.info("var permitira utilizar la variable en todo el contexto en donde fue declarada:");
console.log(variable1_1 += ", Fui modificada");
console.info("let solo permite utilizar la variable dentro del contexto declarado ya sea un if, una funcion, etc...");
console.log(variable1_2 += ", Fui modificada");
console.info("const permitira utilizar un valor fijo para la variable, no podra ser modificada bajo ninguna circunstancia:");
//console.log(variable1_3 += ".");
console.log(variable1_3);
console.log("   ")
console.info("Acceso a variables");
console.info("El acceso a una variable puede ser invocando esta solo por su nombre o en caso de ser datos primitivos, se puede llamar mediante ${}");
console.info("Al invocar variables con este metodo, deberan estar dentro de ` `, si se le quiere adjuntar texto sera posible sin el +, lo tomara como concatenacion todo lo que este dentro de los simbolos");
console.log(`${variable1_1} e invocada mediante llaves`)
console.log("   ");
console.info("Objetos");
console.info("Lectura de objetos ES6");
let objeto1 = {
    nombre: "Objeto 1",
    propiedades: 3,
    imprime: function(params) {
        return "Soy un metodo de impresion: " + params;
    },
    opciones: {
        opc1: true,
        opc2: false
    }
};
let variable2_1
console.log(objeto1);
console.log(objeto1.imprime("Adios"));
console.log(objeto1.opciones.opc1);
console.info("Al extraer información de un objeto, generalmente sera solamente lecutra, por lo tanto, podremos asignar una variable con valor constante");
const {nombre, ...test} = objeto1;
console.log(nombre);
console.log(test);
console.log("   ");
console.warn(" Funciones");
console.info("Existen tres formas recurrentes de desarrollar funciones e invocarlas")
function funcion1(){
    console.log("Soy una funcion normal");
    return true;
};
console.log(funcion1());
let funcion2 = function () {
    return "Soy una funcion referenciada a una variable";
};
console.log(funcion2());
(function(){
    console.log("Soy una funcion anonima ejecutada en el momento que me declararon");
}());
console.error("Las funciones de tipo felcha son funciones anonimas, comunmente se almacenan/referencian en una constante para posterior a esto, poder ser invocadas.");
console.error("Al ser anonimas, no cuentan con this, arguments, super, entre otras propiedades de las funciones normales, por lo tanto, seran mas ligeras y ayudaran en la velocidad de ejecucion");
()=>{
    console.log("Hola, no me voy a ejecutar.");
};
(()=>{
    console.log("Soy una arrow function y me ejecute sola");
})();
const arrowFunction1 = (param) => {
    console.log(`Soy una arrow function referenciada a una variable tipo const\nrecibí como parametro: ${param}`);
};
console.log(arrowFunction1("Hola"));
const arrowFunction2 = (param) => {
    console.log("Soy una arrow function referenciada a una variable de tipo const y retorno un parametro:");
    return param;
}
console.log(arrowFunction2("Hola2"));
console.log("   ");
console.warn(" IF / IF TERNARIO");
let arrayIf1 = [
    {
        nombre: "Elemento 1",
        desc: "Elemento uno dentro del array",
        "Elemento hijo": false
    },
    {
        nombre: "Elemento 2",
        desc: "Elemento dos dentro del array",
        "Elemento hijo": true,
        hijo:[
            {
                nombre: "Hijo1"
            },
            {
                nombre: "Hijo2"
            }
        ]
    }
];
console.log("Objeto para validar con IF", arrayIf1);
console.log("Validar SI el objeto con nombre Elemento 1 cuenta con elemento hijo");
let elArrayIf1 = arrayIf1[0];
let elArrayIf2 = arrayIf1[1];
if(elArrayIf1["Elemento hijo"]){
    console.log("Cuento con elemento hijo!!")
}else{
    console.log("No cuento con elemento hijo :(")
}
console.log("IF TERNARIO", elArrayIf2["Elemento hijo"] ? "El elemento dos cuenta con elemento hijo": "El elemento dos NO cuenta con elemento hijo");
console.log("   ");
console.warn("FOR EACH");
console.log("Ciclo for que recorre todos los elementos requeridos");
console.log("################################");
arrayIf1.forEach(parametro =>{
    console.log("___");
    console.log(parametro.nombre);
    if (parametro["Elemento hijo"]) {
        parametro.hijo.forEach(paramHijo=>{
            console.log(paramHijo.nombre);
        })
    }else{
        console.log("Sin hijos");
    }
console.log("################################");
})
console.log("   ");
console.warn("ASYNC & AWAIT");
console.info("");
console.info("Se definen dos funciones, la primera retorna una cadena despues de 4 segundos y la segunda la ejecuta para tomar ese valor e imprimirlo.");
console.info("Al intentar imprimir el resultado en la funcion dos no se mostrara el resultado de la 1 ya que esta esperara tiempo para retornar valor.");
function asyncOne(){
    setTimeout(() => {
        console.log("Fucion 1");
        return "Jaaziel"
    }, 1000);
};
function asyncTwo(){
    let nombre = asyncOne();
    console.log("Resultado de funcion 1:", nombre)
    console.log("Funcion 2");
}
console.log("Funcion comentada");
//asyncTwo();
console.info("Con la funcion AWAIT le estaremos indicando al codigo que no siga ejecutando lineas hasta que lo que esta en AWAIT termine de ejecutarse.");
console.info("en este caso se coloca un await funcion1() que indicara al codigo que debe de ejecutar todo lo que esta dentro de funcion1 para poder continuar con el codigo posterior al AWAIT");
console.info("Ahora, para utilizar AWAIT, se requiere de un PROMISE que sera lo que se ejecutara al invocar el AWAIT, dentro del PROMISE se colocara el codigo que se requiere ejecutar para que el AWAIT pueda avanzar");
console.info("Este PROMISE debe retornar mediante RESOLVE el resultado que se espera, en caso de existir errores, se puede utilizar un REJECT y colocar lo que se enviara en caso de errores.");
function funProm(){
    console.log("Ejecución de función PROMISE");
    return new Promise((RESOLVE, REJECT) => {
        console.log("Ejecución de codigo dentro de PROMISE...");
        setTimeout(() => {
            console.log("Tiempo ejecutado con exito dentro de PROMISE");
            RESOLVE("Exito");
        }, 0);
    // }, 4000);
        // REJECT("OCURRIO UN ERROR");
    });
};
async function funAwait(){
    let resProm = await funProm();
    console.log("Funcion promise ejecutada con resultado: ", resProm);
    console.log("funcion await ejecutada con exito");
}
console.log("Funcion comentada");
//funAwait();
console.log("   ");
console.warn("COOKIES");
console.error("Las cookies se separan por ; y un espacio en blanco, por lo tanto, se debera realizar un split('; ')");
const creacionCookiesES6 = (nombreC, valorC) => {
    const valCookie = escape(valorC);
    let objDateCK = new Date();
    objDateCK.setMonth(objDateCK.getMonth() + 1);
    // console.log("Cookie a guardar: ", {nombreC}, "=", {valCookie});
    document.cookie = `${nombreC}=${valCookie};expires=${objDateCK};`;
};
const borrarCookiesES6 = nombreC => {
    console.warn("##########################");
    console.error("BORRANDO COOKIES")
    const cookieExiste = obtenerCookiesES6(nombreC);
    if (cookieExiste === false) {
        console.log("Cookie no existe");
        alert("Cookie inexistente");
        return false;
    }else{
        let objDateCKD = new Date();
        objDateCKD.setMonth(objDateCKD.getMonth() - 1);
        console.log("Eliminando Cookie...", `${nombreC}=${cookieExiste}`);
        document.cookie = `${nombreC}=loQueSea;expires=${objDateCKD}`;
        return true;
    }
    console.warn("##########################");
};
const obtenerCookiesES6Log = paramC => {
    const cadenaCookie = document.cookie;
    const arrayCookies = cadenaCookie.split("; ");
    console.log("Obtención de Cookies con split mediante (; )", arrayCookies);
    let objetoCookies = {};
    arrayCookies.forEach(elementC => {
        console.log(elementC);
        const arrayElementosC = elementC.split("=");
        console.log("Creación de arreglos independientes por cada elemento dentro de arrayCookies:", arrayElementosC);
        const nombreCookie = arrayElementosC[0];
        const valorCookie = arrayElementosC[1];
        objetoCookies[nombreCookie] = valorCookie;
        console.log("Asignación de elementos dentro del objetoCookies[nombreCookie] = valorCookie")
    });
    console.log("objetoCookies = ", objetoCookies);
    // console.log(paramC);
    if (paramC != null || paramC != undefined) {
        if (objetoCookies[paramC]) {
            console.log(objetoCookies[paramC]);
            return objetoCookies[paramC];
        }else{
            console.log("Cookie inexistente")
            return false;
        }
    }else{
        return objetoCookies;
    }
};
const obtenerCookiesES6 = paramC => {
    console.log("Buscando Cookie...");
    const cadenaCookie = document.cookie;
    const arrayCookies = cadenaCookie.split("; ");
    let objetoCookies = {};
    arrayCookies.forEach(elementC => {
        const arrayElementosC = elementC.split("=");
        const nombreCookie = arrayElementosC[0];
        const valorCookie = arrayElementosC[1];
        objetoCookies[nombreCookie] = valorCookie;
    });
    // console.log(paramC);
    if (paramC != null || paramC != undefined) {
        if (objetoCookies[paramC]) {
            console.log("Cookie localizada!");
            return unescape(objetoCookies[paramC]);
        }else{
            console.log("Cookie inexistente")
            return false;
        }
    }else{
        return objetoCookies;
    }
}
creacionCookiesES6("nombre", "ES6");
creacionCookiesES6("identy", "1@Az;=1");
creacionCookiesES6("tres", "1@Az;=1");
console.log("Cookies = ", document.cookie)
obtenerCookiesES6Log();
console.log("   ");
console.warn("LOCAL STORAGE");
console.warn("Utilizando localStorage se podrán almacenar datos de forma local en el ordenador del usuario.");
console.warn("Esto, nos permitira poder almacenar datos para facil acceso y no tardar en hacer peticiones a un servidor.");
console.info("Se cuenta con metodos como .setItem(x, y), .getItem(x) y removeItem(x).");
console.log("localStorage: ", localStorage);
localStorage.setItem("nombreLS", "Jaaziel");
localStorage.setItem("mailLS", "jaaziel3210@gmail.com");
localStorage.setItem("edadLS", 30);
console.log("localStorage despues de setItem: ", localStorage);
console.log("localStorage.nombreLS:", localStorage.nombreLS);
console.log("localStorage.getItem('nombreLS'):", localStorage.getItem("nombreLS"));
localStorage.setItem("nombreLS", "Evi");
console.log("Elemento nombreLS actualizado con .setItem:", localStorage.nombreLS);
localStorage.removeItem("nombreLS");
console.log("Elemento nombreLS borrado con .removeItem:", localStorage.nombreLS);
console.info("LOCAL STORAGE CON OBJETOS");
console.info("Para almacenar un objeto que contenga diferentes elementos dentro del localStorage, se requiere un objeto de tipo JSON.");
console.info("Si ya se tiene un objeto definido bastara con utilizar JSON.stringify(element) para poder almacenarlo y JSON.parse(element) para poder utilizarlo.");
const objLocalST = {
    nombre : "Jaaziel",
    mail : "Jaaziel@gmail.com",
    edad : 30
};
console.log("Objeto a utilizar:", objLocalST);
const objStrLS = JSON.stringify(objLocalST);
console.log("Objeto despuesde .stringify:", objStrLS);
localStorage.setItem("objLocalhost", objStrLS);
console.log("Accediendo a localStorage.objLocalhost:", localStorage.objLocalhost);
let objUpdtLS = JSON.parse(localStorage.objLocalhost);
console.log("Obteniendo el objeto y utilizando .parse() para trabajarlo:", objUpdtLS);
objUpdtLS.nombre = "Evi Jaaziel";
localStorage.setItem("objLocalhost", JSON.stringify(objUpdtLS));
console.log("Accediendo al objeto actualizado:", localStorage.objLocalhost);
console.log("   ");
console.warn("ON SUBMIT");
console.info("onSubmit es un evento HTML que se puede usar dentro de la etiqueta <form>");
console.info("Este evento se activara al presionar algun boton con la propiedad type='submit' dentro del formulario y podra ejecutar una funcion dentro del archivo JS");
function datosFormulario(param){
    param.preventDefault();
    console.log(param);
}
console.log("   ");
console.error(" ");
console.warn("PETICIONES GET CON FETCH");
console.error(" ");
console.info("Las peticiones GET son una forma de comunicarse con otros sistemas, estas peticiones forman parte de una API que es donde se publican todo los metodos disponibles para dicha comunicación.");
console.info("En este caso, GET requiere de parametros informados mediante una URL, en este caso los parametros son: api_key, que se consigue en la pagina origen, esta es la clave para poder utilizar ese canal de comunicación.");
console.info("language, este prametro nos indicara en que lenguaje queremos la información; por ultimo, page, en donde se indicara que pagina se quiere obtener al momento de realizar la peticion.");
console.info("Al contar con todos los parametros, se podrá acceder a la url generada mediante el navegador y mostrara la respuesta.");
console.info("En caso de que todos los parametros esten correctos, nos mostrara un un array con objetos que podremos trabajar para extraer información.");
console.log("   ");
function consumoAPI(){

    const apiKey = "a588a8cad12be802cc63c02ddc80bd9f";
    let idioma = "en-US"
    let pagina = "1";
    const url = `https://api.themoviedb.org/3/movie/popular?api_key=${apiKey}&language=${idioma}&page=${pagina}`;
    let peliculas = fetch(url);

    console.log("API_KEY obtenida del sistema que contiene la API:", apiKey);
    console.log("Idioma en el que se requiere la información:", idioma);
    console.log("Pagina a navegar:", pagina)
    console.log("URL con los parametros colocados:", url);
    console.log("fetch() de la URL generada:", peliculas);
    console.info("Al realizar un fetch() se retornara una promesa(promise), teniendo este promise, se debera de trabajar su respuesta con un then() que recibira dos parametros de tipo funcion en donde se retornara el resultado o la causa de un rechazo");
    console.info("En este caso, solo se utilizara un parametro y dependiendo de las propiedades de la respuesta, se podra decidir si se extrae información. Se utilizara la propiedad 'ok' de la respuesta para determinar si la integración fue exitosa");
    console.log("   ");
    console.log("El metodo THEN es utilizado para objetos promise, este metodo recibe dos parametros de tipo funcion, el primero se recibira si la petición fue exitosa y la segunda funcion se ejecutara solamente si existe algun error de red o comunicación.");
    console.log("Si la respuesta es exitosa y se tiene en la propiedad OK un TRUE, se retornara esta misma respuesta transformada en json() para poder obtener los datos de la petición.")
    let resultadoPromise = peliculas.then(respuesta => {
        if (respuesta.ok) {
            console.log("Peticion ejecutada correctamente!:", respuesta);
        }else{
            console.log("Se encontro un error durante la peticion:", respuesta);
        }
        return respuesta.json();
    }, rechazo => {
        console.log("Error de comunicación!", rechazo);
        return rechazo;
    });
    
    console.log("Resultado de THEN:", resultadoPromise);
    console.info("Esto nos retorna un PROMISE, por lo tanto, para trabajar con su contenido, se requiere de THEN nuevamente.");
    console.info("En este caso, la respuesta de la URL se retorno como un archivo JSON() y al navegar el promise, se puede observar toda la información dentro de el tag VALUE, para acceder a este utilzaremos THEN y el primer parametro recibira el cotenido de VALUE como parametro.");
    resultadoPromise.then(datosFetch => {
        console.log("Resultado de THEN despues de obtener el resultado de THEN en la URL:", datosFetch);
        let arrayDatosFetch = datosFetch.results;
        console.log(arrayDatosFetch);
        arrayDatosFetch.forEach(elemento => {
            console.log(elemento.original_title);
        });
    })
}
consumoAPI()