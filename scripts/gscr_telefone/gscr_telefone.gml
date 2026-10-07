// ==============================
// GLOBAIS UTILIZADAS NA ROOM SALAO
// ==============================

function gscr_telefone(){
    enum ESTADOS_TELEFONE {
        TUTORIAL,
        TOCANDO,
        ATENDENDO,
        OCIOSO,
    }
    
    global.estado_telefone = ESTADOS_TELEFONE.TOCANDO;
    global.passou_tutorial = false;
    global.cliente_atual = noone; // alterado na função sorteia_cliente
    global.struct_pedido_atual = {}; // alterado na função sorteia_cliente
    global.texto_pedido_atual = ""; // alterado na função sorteia_cliente
    global.banco_clientes = scr_banco_clientes();
    global.pedidos_atendidos = 0;
    global.clientes_por_dia = 3;
}