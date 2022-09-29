var audc = document.getElementById("audioc");

var div = 1;

function clicar(num) {
    var texto = document.getElementById("digitos"+div).innerHTML;
    var resultado = texto + num; 
    document.getElementById("digitos"+div).innerHTML = resultado + "  ";
    div = div + 1;
}

function corrige() {
    for (let index = 1; index < 5; index++) {
        document.getElementById("digitos"+index).innerHTML = "";
    }
}

div = 1;
