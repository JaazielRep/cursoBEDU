//NGINX - Puerto 80
//SSH - Puerto 22

console.log("Ejecutando");

const http = require("node:http");

//Funcion a ejecutar cada que exista un request
const server = http.createServer(function(request, response){
	console.log("Peticion...")
	//console.log(request)
	//console.log(response)

	response.write("Respuesta a peticion");

	response.end();
});



server.listen(8080);