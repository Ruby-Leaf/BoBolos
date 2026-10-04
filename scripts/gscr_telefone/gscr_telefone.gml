function gscr_telefone(){
    enum ESTADOS_TELEFONE {
        TOCANDO,
        ATENDENDO,
        OCIOSO,
    }
    
    global.estado_telefone = ESTADOS_TELEFONE.TOCANDO;
    global.cliente_atual = noone; // alterado na função sorteia_cliente
    global.indice_pedido = 0; // alterado na função sorteia_cliente
    global.banco_clientes = scr_banco_clientes();
}