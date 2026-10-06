// ------------------------------  
// ao abrir o pop-up
// ------------------------------

if (pedido_aberto) {
	// ---------- aparencia do pop-up
    var _estetica = {
        cor_fundo: make_colour_rgb(255, 245, 240),
        fontes: [fnt_h2, fnt_p],
        largura: min(300, room_width / 2 * 1.3),
        altura: min(800, room_height / 2),
    }
    
    var _texto_pop_up = [
        "O cliente " + global.cliente_atual.nome +" pediu:",
        global.texto_pedido_atual,
        "(clique no papel do pedido para fechar)"
    ]
    
	// ---------- desenha o pop-up
    scr_draw_pop_up(_texto_pop_up, _estetica);
}