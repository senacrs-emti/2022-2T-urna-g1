<?php

$arquivo = fopen("../acessos.csv", "r");

$contador = 0;

while ($linha = fgetcsv($arquivo, 1000, ",") ) {

    if ( $contador >= 1 ){
        $sql = "INSERT INTO acessos (AcessoID, Nome, Usuario, Senha, Excluido) 
                VALUES (".$linha[0].", '".$linha[1]."', '".$linha[2]."', '".$linha[3]."','F');<br>";
                echo $sql;
    }
    $contador++;
}   

fclose($arquivo)

?>