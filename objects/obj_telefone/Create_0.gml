layer_alerta = "callAlert";

// ============================== 
/// @desc Ativa o layer do alerta, permite o clique e ativa o som de toque
function tocar_telefone() {
    global.estado_telefone = ESTADOS_TELEFONE.TOCANDO;
    layer_set_visible(layer_alerta, true);
    // TODO: ativar som de toque
}

// ============================== 
/// @desc retorna o texto que foi apresentado pelo telefone no momento do pedido
/// @return {String} texto do pedido
function get_texto_pedido() {
    return global.cliente_atual.texto_pedidos[global.indice_pedido];
}