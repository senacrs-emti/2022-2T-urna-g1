$( document ).ready(function() {

var div = 1;

function clicar(num) {
    var texto = document.getElementById("digitos"+div).innerHTML;
    var resultado = texto + num; 
    document.getElementById("digitos"+div).innerHTML = resultado;
    div = div + 1;
}

function corrige() {
    for (let index = 1; index < 5; index++) {
        document.getElementById("digitos"+index).innerHTML = "";       
        div = 1;
    }
}

$("#butconfirma").click(function (){
    const tipotela = $('#telaAtual').val();
    $.ajax({
        type:"POST",
        url:'valida.php',
        data:'tipo='+tipotela,
        sucess: function (result) {
            $("#tela").html(result);
        }
    });
});

});