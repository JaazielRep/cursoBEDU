const expressJS = require("express");
const aplicacion = expressJS();
const logCustom = require("./logger");

aplicacion.get("*", function(req, res){
    logCustom.debug("Abiendo peticion...");
    logCustom.info(req.method, req.url)
    console.log('LOG CONSOLA', new Date().toLocaleString(), '|', req.method, '|', req.url);
    res.send("Respuesta");
})

aplicacion.listen(8080, function(){
    logCustom.info("Servidor arriba en puerto 8080");
    //console.log(new Date().toLocaleTimeString(), '|', 'Servidor arriba en puerto 8080');
})

