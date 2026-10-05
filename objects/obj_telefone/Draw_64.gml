// ==============================  
// POP UP LIGAÇÃO TELEFONICA
// ==============================
var _estetica = {
    cor_fundo: make_colour_rgb(255, 230, 200),
    fontes: [fnt_h2, fnt_p],
    largura: room_width / 2 * 1.3,
    altura: min(300, room_height / 2),
    deslocamento_y: -150, 
}
var _texto_pop_up = [];

if (global.estado_telefone == ESTADOS_TELEFONE.ATENDENDO) {
    _texto_pop_up = [
        global.cliente_atual.nome,
        global.texto_pedido_atual,
        "(Clique no telefone para desligar)"
    ]
    
    scr_draw_pop_up(_texto_pop_up, _estetica);
}

if (global.estado_telefone == ESTADOS_TELEFONE.TUTORIAL) {
    _texto_pop_up = [
        "Tutotial",
        "Bem vindo à BoBolos! Em breve você receberá seu primeiro cliente. Siga as receitas conforme o livro e se atente às pequenas mudanças do cliente. Boa sorte!",
        "(Clique no telefone para desligar)"
    ]
    
    scr_draw_pop_up(_texto_pop_up, _estetica);
}