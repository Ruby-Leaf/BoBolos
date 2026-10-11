function scr_entrega_pedido(){
    global.pedidos_atendidos++;
    
    if (global.pedidos_atendidos mod global.clientes_por_dia == 0 && global.pedidos_atendidos > 0) {
        if (!instance_exists(obj_transicao_dias)) {
            instance_create_depth(0, 0, -9999, obj_transicao_dias);
        }
    }
}