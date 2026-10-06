layer_alerta = "callAlert";

// ============================== 
/// @desc Ativa o layer do alerta, permite o clique e ativa o som de toque
function tocar_telefone() {
    global.estado_telefone = ESTADOS_TELEFONE.TOCANDO;
    layer_set_visible(layer_alerta, true);
    // TODO: ativar som de toque
}