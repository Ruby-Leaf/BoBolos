switch (global.estado_telefone) {
    case ESTADOS_TELEFONE.ATENDENDO:
        global.estado_telefone = ESTADOS_TELEFONE.OCIOSO;
        room_goto(rm_cozinha);
    break;

    case ESTADOS_TELEFONE.TUTORIAL:
        global.passou_tutorial = true;
        tocar_telefone();
    break;

    case ESTADOS_TELEFONE.TOCANDO:
        if (global.passou_tutorial) {
            global.estado_telefone = ESTADOS_TELEFONE.ATENDENDO;
            scr_sorteia_cliente();
        } else {
            global.estado_telefone = ESTADOS_TELEFONE.TUTORIAL;
        }
        layer_set_visible(layer_alerta, false);
    break;
}