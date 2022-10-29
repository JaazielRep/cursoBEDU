console.log("Funcionando");

//Creacion de objetos
const oPersona = function(pNombre, pAnio, pTrabajo){
    this.nombre = pNombre;
    this.anio = pAnio;
    this.trabajo = pTrabajo;
}

//Se crea un array que almacenara los datos
let aPersonas = new Array();

//Se envian los objetos al array
aPersonas.push(new oPersona("Jaaziel", 1990, "Desarrollador"));
aPersonas.push(new oPersona("Daniel", 1992, "Robotica"));
aPersonas.push(new oPersona("Eduardo", 1990, "RI"));
aPersonas.push(oPersona("TEST", 1990, "TEST"));

//Se crea otro objeto para almacenar habilidades
const oHabilidades = function(pNombreHab, pAnioHab, pTrabajoHab, pHabilidad, pExperiencia){
    oPersona.call(this, pNombreHab, pAnioHab, pTrabajoHab);
    this.habilidad = pHabilidad;
    this.aniosExpe = pExperiencia;
}

//Se crea array para almacenar habilidades
let aHabilidades = new Array();

//Se envia un objeto oHabilidades al array creado
aHabilidades.push(new oHabilidades("Jaaziel M", 1990, "Desa","Dormir", "6"));

//Se crea un prototipo del objeto oHabilidades para calcular la edad con el paremetro indicado encada profesional
oHabilidades.prototype.calculaEdad = function(){
    const anioActual = new Date();
    //console.log(this.anio);
    //console.log(anioActual.getFullYear());
    return anioActual.getFullYear() - this.anio;
}