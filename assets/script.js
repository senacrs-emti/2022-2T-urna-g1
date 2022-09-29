var audc = document.getElementById("audioc");

function clicar(num) {
    var texto = document.getElementById("digitos").innerHTML;
    var resultado = texto + num; 
    document.getElementById("digitos").innerHTML = resultado + "  ";
    
}
function corrige() {
    document.getElementById("digitos").innerHTML = "";
}
