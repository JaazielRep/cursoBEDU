
// https://dev.to/gdcodev/25-metodos-de-arrays-en-javascript-que-todo-desarrollador-debe-conocer-4a2d 
//Se define arreglo
let aContObj = new Array();
let aContNum = [10, 2, 23, 123, 2, 4,5, 7, 120];

aContObj.push({nombre: "TEST", anio: 10});
aContObj.push({nombre: "TEST2", anio: 12});
aContObj.push({nombre: "TEST3", anio: 13});
aContObj.push({nombre: "TEST4", anio: 15});

let aContenedorImp = new Array();
//map recibe el valor del elemento, indice (valor i), el arreglo completo que esta retornando;


const contenedor2 = aContNum.map(objeto => objeto*2)


//
let aMayor10 = new Array();

for (let iNumero = 0; iNumero < aContNum.length; iNumero++) {
    if (aContNum[iNumero] > 10) {
        aMayor10.push(aContNum[iNumero]);
    }
}
console.log(aMayor10);

//Manera declarativa;
let aMayor10Dec = aContNum.filter(numero => numero > 10);
console.log(aMayor10Dec);

//Suma de elementos del array, empezando la cuenta en 0
const sumaElementos = aContNum.reduce((numeroAlmacena, numeroArray) => numeroAlmacena + numeroArray, 0);
//const sumaElementos = aContNum.reduce((numeroAlmacena, numeroArray) => numeroAlmacena + numeroArray, 10);
console.log(sumaElementos);



/*
################################## INMUTABILIDAD
*/
console.info("============= INMUTABILIDAD")
const obj1 = {
    porp1: "rojo",
    prop2: "12"
}

//Añade una propiedad mas y retorna las que ya tenia el objeto
function aniadePorp2(param){
    obj1.prop3 = param;
    return obj1;
}
console.log(obj1);
const objNuevo1 = aniadePorp2("nueva prop");
console.log(objNuevo1);


const funcionCopia = () => {
    const objNuevo2 = {
        ...obj1,
        propTEST: "copia objeto"
    }
    return objNuevo2;
}

console.log(funcionCopia());
console.log(obj1);