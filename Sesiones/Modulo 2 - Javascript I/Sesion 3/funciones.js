/*
########################## FUNCIONES PURAS
*/

//Siempre retorna el mismo resultado durante las veces que sea convocada
const fn_suma1 = () => {
    return 1 + 2;
}

//Pierde el ser pura ya que el resultado varia con cada invocacion
const fn_suma2 = () => {
    return Math.random() + Math.random();
}

console.log("Funcion pura:", fn_suma1());
console.log("Funcion no pura:", fn_suma2());

//Las funciones puras tambien pueden ser usadascon inmutabilidad
let cart = [ { item: 'Laptop', quantity: 1 } ] 
const addItemToCart = (cart, item, quantity) => { 
    // const newCart = cart.map(element => element) 
    const newCart = [...cart]; 
    newCart.push({ item: item, quantity: quantity }) 
    return newCart; 
} 

cart = addItemToCart(cart, 'Phone', 1); console.log(cart) 