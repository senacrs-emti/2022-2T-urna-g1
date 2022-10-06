<?php
$login = $_POST['login'];
$entrar = $_POST['entrar'];
$senha = md5($_POST['CPF']);
$connect = mysql_connect('nome_do_servidor','nome_de_usuario','CPF');
$db = mysql_select_db('nome_do_banco_de_dados');
  if (isset($entrar)) {

    $verifica = mysql_query("SELECT * FROM usuarios WHERE login =
    '$login' AND senha = '$senha'") or die("erro ao selecionar");
      if (mysql_num_rows($verifica)<=0){
        echo"<script language='javascript' type='text/javascript'>
        alert('Todos os campos não foram completados');window.location
        .href='login.html';</script>";
        die();
      }else{
        setcookie("login",$login);
        header("Location:index.php");
      }
  }
?>