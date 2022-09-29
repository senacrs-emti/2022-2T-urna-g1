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

    <!-- audios  -->
        <audio src="audios/som-confirma.mp3" id="audioc"></audio>


    <div class="block1">

        <div class="block3">
        
            <img src="imagens/logo-senac.png" alt="logo" style="width: 200px;  margin-top: -27px; float:left;">

            <div class="pan" style="width: 245px; float: right; height: 120px; text-align: center;">

                <p style="margin-top: 15px; font-size: 32px;">Justiça</p>
                <p style="font-size:32px;">Eleitoral</p>

            </div>

        
        </div>
        
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

        <div>
            
            <div style="display: inline-flex; margin-left: 211px; margin-top: 110px;">
            
                <p class="digitos" id="digitos1"></p>
                <p class="digitos" id="digitos2"></p>
                <p class="digitos" id="digitos3"></p>
                <p class="digitos" id="digitos4"></p>
                        
            </div>

        </div>

        <div>

        </div>

    </div>

    <script src="assets/script.js"></script>
</body>
</html>