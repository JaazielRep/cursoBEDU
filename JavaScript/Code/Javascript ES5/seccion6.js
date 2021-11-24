//'use strict' obligara a todo el contexto en donde se declare a utilizar buenas practicas.
"use strict"
console.warn("SECCION 6");
console.info("* Eventos")
console.log("   Los eventos son acciones disparadas en algun objeto del DOM como clicks, focusout, keypress, entre otros...");
function eventoGral(params) {
    console.log(" Me ejecute!");
    console.log(params);
    console.log(params.x, params.y)
};
window.onload = function(){
    var objeto1 = document.getElementById("etiquetaH");
    var objeto2 = document.getElementById("numero");
    console.log(document)
    console.log(objeto1)
    console.log(objeto2)
    objeto2.addEventListener("click", eventoGral);
};
console.info("* Bloqueo de click derecho");
document.onmousedown = function (params) {
    console.log(params)
    if (params.button === 2) {
        alert("Click bloqueado");
        return;
    }
}
