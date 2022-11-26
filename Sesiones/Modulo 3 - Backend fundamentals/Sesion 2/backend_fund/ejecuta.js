//Importar

const operaciones = require("./operaciones");
//const operaciones = require("./operaciones.js");

console.log(operaciones);
console.log(operaciones.suma(1, 9));


const os = require("node:os")

console.log("Sistema operativo: ", os.platform())
console.log("Sistema operativo: ", require("os").platform())