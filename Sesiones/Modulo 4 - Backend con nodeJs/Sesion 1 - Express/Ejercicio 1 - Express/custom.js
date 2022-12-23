//1. Importar express, solo en los modulos nativos de node se escribe :
const impExpress = require("express");

//Crear instancia de un servidor
const instExpress = impExpress();

//Se crea un endopoint, como solo tiene un / significa que es la raiz de los endpoints
instExpress.get("/", function(request, response){
    response.send("Hello world");
});


//Lista de productos
const contProducto = [
    {id:'0001', desc:'producto1'},
    {id:'0002', desc:'producto2'}
]

//endpoint producto
instExpress.get("/productos", function(request, response){
    response.json(contProducto);
});

//Asignar y escuchar puerto
instExpress.listen(8080, function(){
    console.log("Escuchando puerto 8080");
});