// ============================== 
/// @desc escolhe o cliente que está ligando
function scr_sorteia_cliente(){
    randomize();
    var _indice_cliente = irandom(array_length(global.banco_clientes) - 1);
    
    global.cliente_atual = global.banco_clientes[_indice_cliente];
    global.indice_pedido = irandom(array_length(global.cliente_atual.texto_pedidos) - 1);
}