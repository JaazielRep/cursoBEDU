console.log("   ");
console.warn("* Cookies");
console.warn("* Para que las cookies sean almacenadas, se debe trabajar con NODE JS o cualquier servidor, no de forma local");
console.info("* Las cookies son datos almacenados dentro de navegador mediante JS, de preferencia no deberian de ser datos sensibles.");
console.info("   Generalmente las cookies se separaran mediante un punto y coma ;")
console.info("   En caso de contar con caracteres especiales en una cadena de texto, podemos trabajar esos caracteres como si fuesen elementos en HTML con escape(...)");
console.info("  De igual forma, para almacenar esa información en una cookie, lo mejor sera trabajar los caracteres especiales");
var cookiesCadena1 = "Hola! Puedo trabajar 24/7 con una comisión de 40%";
console.log(cookiesCadena1);
console.log("   Metodo escape(...) = ", escape(cookiesCadena1));
console.info("  Para trabajar una cookie con caracteres especiales ya almacenada y querer obtener su valor, se utilizara el metodo unescape(...)");
console.log("   Metodo unescape(...) = ", unescape(escape(cookiesCadena1)));
console.info("  Para definir el tiempo de existencia de una cookie, al momento de declararla tambien se tendra que adjuntar la propiedad 'expires = FECHA' separado mediante ;");
function crearCookies (paramNom, paramVal){
    console.warn("*** Creando cookie ***");
    var cookieExp = new Date();
    cookieExp.setMonth(cookieExp.getMonth() +1);
    console.log("Nombre de cookie: ", escape(paramNom));
    console.log("Valor de cookie: ", escape(paramVal));
    console.log("Fecha de expiración: ", cookieExp.toUTCString());
    var cookieData = escape(paramNom) + "=" + paramVal + ";expires=" + cookieExp;
    console.log("Cookie a crear: ", cookieData);
    document.cookie = cookieData;
    console.warn("*** Cookie creada ***");
    return true;
}
crearCookies("nombre", "Jaaziel");
console.info("  Para borrar las cookies se debera seleccionar la cookie por su nombre y posterior a esto indicar en el valor expires, una fecha anterior al dia de hoy");
console.info("  El valor de la cookie no interfiere, se debe de indicar por nombre de cookie y es bastara.")
function borraCookie(paramNom) {
    console.error("*** BORRANDO COOKIE ***");
    var cookieExp = new Date();
    cookieExp.setMonth(cookieExp.getMonth()-1);
    console.log("Borrando cookie '" + paramNom + "'...");
    document.cookie = paramNom+"=undef;expires=" +cookieExp.toUTCString()+";";
    console.error("*** INFORMACION BORRADA ***");
}
//borraCookie("nombre");
console.info("  Para OBTENER cookies y su valor, se debera enviar el nombre de la cookie que se desea seleccionar");
function traerCookie(paramNom) {
    console.info("*** Obteniendo cookies ***")
    var allCookies = document.cookie;
    var arrCookies = allCookies.split(";");
    console.log(allCookies);
    console.log("convirtiendo cookies en array");
    console.log(arrCookies);
    for (let index = 0; index < arrCookies.length; index++) {
        let element = arrCookies[index].split("=");
        console.log(element);
        if (element[0] === paramNom) {
            return unescape(element[1]);
        }
    }
    
}
traerCookie("apellido");
