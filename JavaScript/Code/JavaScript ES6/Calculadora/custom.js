var globalOperator = null;

function getContentClick(param){
    console.log(param);
    const valueButton = param.target.innerHTML;
    filterAction(valueButton);
}

const filterAction = paramFil => {
    console.log("Filtrando...");
    paramFil === "0" ? displayValue(0) : null;
    paramFil === "1" ? displayValue(1) : null;
    paramFil === "2" ? displayValue(2) : null;
    paramFil === "3" ? displayValue(3) : null;
    paramFil === "4" ? displayValue(4) : null;
    paramFil === "5" ? displayValue(5) : null;
    paramFil === "6" ? displayValue(6) : null;
    paramFil === "7" ? displayValue(7) : null;
    paramFil === "8" ? displayValue(8) : null;
    paramFil === "9" ? displayValue(9) : null;
    paramFil === "," ? displayValue(",") : null;

    paramFil === "+" ? defineOperation("+") : null;
    paramFil === "-" ? defineOperation("-") : null;
    paramFil === "X" ? defineOperation("X") : null;
    paramFil === "+/-" ? defineOperation("+/-") : null;
    paramFil === "/" ? defineOperation("/") : null;
    paramFil === "%" ? defineOperation("%") : null;

}

function displayValue(param){
    const objInputScreen = document.getElementsByClassName("calculator_screen")[0];
    const valueObjInput =objInputScreen.value;

    //Si el valor de lo que hay en el input es un 0 y lo que se digita es diferente a ",", el valor del imput
    //sera igual al valor oprimido.
    if (valueObjInput === "0" && valueObjInput.length === 1 && param !== ",") {
        objInputScreen.value = param;
        return;
    }

    objInputScreen.value += param;
}

function defineOperation(operator){
    const inputScreenVal = document.getElementsByClassName("calculator_screen")[0].value;
    this.globalOperator = operator;

    if (inputScreenVal != 0) {
        fnCalc();
    }
}

function fnCalc(){
    
}