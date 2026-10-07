// ============================== 
/// @desc escolhe o cliente que está ligando
function scr_sorteia_cliente(){
    
    // Gera a quantidade de clientes liberados com base em dias jogados
    var _clientes_liberados = min(global.pedidos_atendidos + 2, array_length(global.banco_clientes) - 1); // começa com 3 clientes
    
    // Escolhe um índice de cliente aleatório
    var _indice_cliente = irandom(_clientes_liberados);
    global.cliente_atual = global.banco_clientes[_indice_cliente];
    
    // Escolhe um pedido de um índice aleatório
    var _indice_pedido = irandom(array_length(global.cliente_atual.texto_pedidos) - 1);
    global.texto_pedido_atual = global.cliente_atual.texto_pedidos[_indice_pedido];
    global.struct_pedido_atual = global.cliente_atual.requisitos_pedidos[_indice_pedido];
}