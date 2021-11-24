import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-data-binding',
  templateUrl: './data-binding.component.html',
  styleUrls: ['./data-binding.component.css']
})
export class DataBindingComponent implements OnInit {

  textoInterpolacion = "Titulo por interpolacion"
  propertyBinding1 = "readonly";
  propertyBinding2 = "form-control";
  eventBinding1 = "";

  constructor() { }

  ngOnInit(): void {
  }

  funcionClick1(): void{
    this.eventBinding1 = "Boton presionado!!"
  }

}

console.log("DataBinding");
function comparaCadena(arrayParam: string[]): boolean{
  let bandera = true;
  let arrayToString = arrayParam.toString();
  console.log(arrayToString);
  let arrayReverse = arrayParam.reverse();
  console.log(arrayReverse);
  if(arrayToString.localeCompare(arrayReverse.toString()) === 0){
    return bandera
  }else{
    return !bandera;
  }
}
var a = comparaCadena(["a", "b", "a"])
console.log(a)