<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">

</head>
<body>

    <div class="block1">
        
        <div class="numeros">

            <button type="submit" class="btn num" onclick="clicar(1)">1</button>
            <button type="submit" class="btn num" onclick="clicar(2)">2</button>
            <button type="submit" class="btn num" onclick="clicar(3)">3</button>
            <button type="submit" class="btn num" onclick="clicar(4)">4</button>
            <button type="submit" class="btn num" onclick="clicar(5)">5</button>
            <button type="submit" class="btn num" onclick="clicar(6)">6</button>
            <button type="submit" class="btn num" onclick="clicar(7)">7</button>
            <button type="submit" class="btn num" onclick="clicar(8)">8</button>
            <button type="submit" class="btn num" onclick="clicar(9)">9</button>
            <button type="submit" style="margin-left: 96px;" class="btn num" onclick="clicar(0)">0</button>

        </div>

        <button type="submit" class="butn" style="background-color: white;" >branco</button>

        <button type="submit" class="butn" style="background-color: #e93c3c;" onclick="corrige()" >corrige</button>
        
        <button type="submit" class="butn" style="height: 100px; background-color: #2ac12a;" onclick="confirma()" >confirma</button>

    </div>

    <div class="block2">

        <div class="box">

            <p id="digitos"></p>
        
        </div>

    </div>

    <script src="assets/script.js"></script>
</body>
</html>