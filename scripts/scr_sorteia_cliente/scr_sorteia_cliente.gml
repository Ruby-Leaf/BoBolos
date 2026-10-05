// ============================== 
/// @desc escolhe o cliente que está ligando
function scr_sorteia_cliente(){
    randomize();
    var _indice_cliente = irandom(array_length(global.banco_clientes) - 1);
    
    global.cliente_atual = global.banco_clientes[_indice_cliente];
    
    var _indice_pedido = irandom(array_length(global.cliente_atual.texto_pedidos) - 1);
    
    global.texto_pedido_atual = global.cliente_atual.texto_pedidos[_indice_pedido];
    global.struct_pedido_atual = global.cliente_atual.requisitos_pedidos[_indice_pedido];
}