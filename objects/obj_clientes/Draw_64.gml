if pop_up_visible{



if !rom{
	resposta_gostou = random(array_length(global.cliente_atual.respostas_positivas));
	resposta_odiou = random(array_length(global.cliente_atual.respostas_negativas));
	rom = !rom;
}
var _estetica = {
    cor_fundo: make_colour_rgb(255, 230, 200),
    fontes: [fnt_h2, fnt_p],
    largura: room_width / 2 * 1.3,
    altura: min(300, room_height / 2),
    deslocamento_y: -150,
}

var _texto_pop_up = [];

if gostou  {
_texto_pop_up = [
        global.cliente_atual.nome,
        global.cliente_atual.respostas_positivas[resposta_gostou],
        "(Clique no cliente para fechar)"
];
}else{
	
	_texto_pop_up = [
        global.cliente_atual.nome,
        global.cliente_atual.respostas_negativas[resposta_odiou],
        "(Clique no cliente para fechar)"
];
}

scr_draw_pop_up(_texto_pop_up, _estetica);
}