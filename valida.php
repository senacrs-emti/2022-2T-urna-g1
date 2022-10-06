<?php 

$telas = array('Bloquado','DepFederal','DepEstadual','Senador','Governador','Presidente');
$posicao = array_search($tipo,$telas);
$proximatela = $telas[posicao + 1];

$tipo = $_POST['tipo'];

switch ($tipo) {
    case 'DepFederal':
        $html = '
        <input type="text" id="telaAtual" value="DepFederal">

        <div>
            
            <h1 style="margin-left: auto; margin-right: auto; display: table;">Deputado Federal</h1>

            <div style="display: inline-flex; margin-left: 211px; margin-top: 110px;">
            
                <p class="digitos" id="digitos1"></p>
                <p class="digitos" id="digitos2"></p>
                <p class="digitos" id="digitos3"></p>
                <p class="digitos" id="digitos4"></p>
                        
            </div>

        </div>';

        break;

    case 'DepEstadual':
        $html = '
        <input type="text" id="telaAtual" value="Deputado Estadual">

        <div>
            
            <h1 style="margin-left: auto; margin-right: auto; display: table;">Deputado Estadual</h1>

            <div style="display: inline-flex; margin-left: 211px; margin-top: 110px;">
            
                <p class="digitos" id="digitos1"></p>
                <p class="digitos" id="digitos2"></p>
                <p class="digitos" id="digitos3"></p>
                <p class="digitos" id="digitos4"></p>
                        
            </div>

        </div>';

        break;

        case 'Senador':
            $html = '
            <input type="text" id="telaAtual" value="Senador">
    
            <div>
                
                <h1 style="margin-left: auto; margin-right: auto; display: table;">Senador</h1>
    
                <div style="display: inline-flex; margin-left: 211px; margin-top: 110px;">
                
                    <p class="digitos" id="digitos1"></p>
                    <p class="digitos" id="digitos2"></p>
                    <p class="digitos" id="digitos3"></p>
                    <p class="digitos" id="digitos4"></p>
                            
                </div>
    
            </div>';
    
            break;

            case 'Governador':
                $html = '
                <input type="text" id="telaAtual" value="Governador">
        
                <div>
                    
                    <h1 style="margin-left: auto; margin-right: auto; display: table;">Governador</h1>
        
                    <div style="display: inline-flex; margin-left: 211px; margin-top: 110px;">
                    
                        <p class="digitos" id="digitos1"></p>
                        <p class="digitos" id="digitos2"></p>
                        <p class="digitos" id="digitos3"></p>
                        <p class="digitos" id="digitos4"></p>
                                
                    </div>
        
                </div>';
        
                break;
    
                case 'Presidente':
                    $html = '
                    <input type="text" id="telaAtual" value="Presidente">
            
                    <div>
                        
                        <h1 style="margin-left: auto; margin-right: auto; display: table;">Presidente</h1>
            
                        <div style="display: inline-flex; margin-left: 211px; margin-top: 110px;">
                        
                            <p class="digitos" id="digitos1"></p>
                            <p class="digitos" id="digitos2"></p>
                            <p class="digitos" id="digitos3"></p>
                            <p class="digitos" id="digitos4"></p>
                                    
                        </div>
            
                    </div>';
            
                    break;
    default:
        
        break;
}

?>