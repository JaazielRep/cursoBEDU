var data = [
    {name: "Kilimanjaro", height: 5895, place: "Tanzania"},
    {name: "Everest", height: 8848, place: "Nepal"},
    {name: "Mount Fuji", height: 3776, place: "Japan"},
    {name: "Vaalserberg", height: 323, place: "Netherlands"},
    {name: "Denali", height: 6168, place: "United States"},
    {name: "Popocatepetl", height: 5465, place: "Mexico"},
    {name: "Mont Blanc", height: 4808, place: "Italy/France"}
  ];

const createNodeJM = (nodo, contenido) => {
    const nodoNuevo = document.createElement(nodo);
    if(typeof contenido === "string"){
        const textoNodo = document.createTextNode(contenido);
        nodoNuevo.appendChild(textoNodo);
    }else{
        nodoNuevo.appendChild(contenido);
    }
    return nodoNuevo;
}

for (let index = 0; index < data.length; index++) {
    let filaTablaJM;

    filaTablaJM = createNodeJM("tr", createNodeJM("td", data[index].name))
    filaTablaJM.id = "fila___" + (index + 1);
    filaTablaJM.appendChild(createNodeJM("td", data[index].height+""))
    filaTablaJM.appendChild(createNodeJM("td", data[index].place))
    const botonFila = filaTablaJM.appendChild(createNodeJM("td", createNodeJM("button", "info")));
    //console.log(botonFila.childNodes[0]);
    botonFila.childNodes[0].id = "btn_fila___" + (index + 1);
    document.getElementById("tablaEjercicio2").appendChild(filaTablaJM)
}

//Obtiene todos los elementos que tienen un id parecido a
const filasTabla = document.querySelectorAll('[id^=btn_fila___]');
console.log(filasTabla);
/*filasTabla.forEach(element => {
    element.addEventListener("click", function(){
        console.log(this);
        console.log(this.parentNode);
        console.log(this.parentNode.parentNode);
        const filaClick = this.parentNode.parentNode;
        alert(`Nombre: ${filaClick.childNodes[0].textContent}, Altura: ${filaClick.childNodes[1].textContent}, Pais: ${filaClick.childNodes[2].textContent}`)
    });
});
*/


filasTabla.forEach(element => {
    element.addEventListener("click", imprimeValorTR(element));
});

function imprimeValorTR(param){
    const filaClick = this.parentNode.parentNode;
    alert(`Nombre: ${filaClick.childNodes[0].textContent}, Altura: ${filaClick.childNodes[1].textContent}, Pais: ${filaClick.childNodes[2].textContent}`)
}



window.addEventListener("keydown", function(event) {
    if (event.key == "Enter") {
      document.body.style.background = "lightblue";
    }
  
    if (event.key == "Enter" && event.ctrlKey) {
      document.body.style.background = "orange";
    }
  });

  
/*
const printData = arr => { 
    const montanias = document.getElementById('montanias') 
    for (let i = 0; i < arr.length; i++) { 
        // 
        montanias.innerHTML += `<p>${arr[i].name}</p>` 
        const contenido = ` <p> <span class="nombre"> Nombre: ${arr[i].name} </span> <span class="altura"> Altura: ${arr[i].height}kms</span> <span class="lugar"> Lugar: ${arr[i].place} </span> </p>` 
        montanias.insertAdjacentHTML("beforeend" , contenido) 
    } 
}
*/


        
//printData(data) 

