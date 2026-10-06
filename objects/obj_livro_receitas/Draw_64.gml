// ==============================  
// EXIBE O CONTEÚDO DAS RECEITAS
// ==============================  


if (pedido_aberto) {
	
	// ---------- Armazena as receitas
    var _receitas = scr_receitas(); // seta as receitas possiveis
	
	// ---------- Chama e separa as princiapais receitas
    var _receita_laranja = _receitas[SABORES_BOLO.LARANJA];
    var _receita_baunilha = _receitas[SABORES_BOLO.BAUNILHA];
    var _receita_chocolate = _receitas[SABORES_BOLO.CHOCOLATE];

    var _receitas_principais = [
        _receita_baunilha,
        _receita_chocolate,
        _receita_laranja
    ];
	
	// ---------- Presets para o pop-up que será exibido
    var _nome_sabores = ["baunilha", "chocolate", "laranja"];
    
    var _largura = 300;
    var _deslocamento_x = [-_largura, 0 , _largura];
	
    // ---------- laço de repetição para exibir cada receita em "_receitas_principais"
    for (var i = 0; i < array_length(_receitas_principais); i++) {
		
		// ---------- conteudo do pop-up
        var _estetica = {
            cor_fundo: make_colour_rgb(255, 245, 240),
            fontes: [fnt_h2],
            largura: min(300, room_width / 2 * 1.3),
            altura: min(800, room_height / 2),
            deslocamento_x: _deslocamento_x[i],
        }
        
    	var _texto_pop_up = [
            "Bolo de " + _nome_sabores[i],
            "Ovos: " + string(_receitas_principais[i].ovos),
            "Farinha: " + string(_receitas_principais[i].farinha),
            "Leite: " + string(_receitas_principais[i].leite),
        ];
        
		// ---------- faz uma ação diferente para cada coluna
        switch (i) {
        	case 0:
                array_push(_texto_pop_up, "baunilha: " + string(_receitas_principais[i].baunilha));
                array_push(_texto_pop_up, "");
                array_push(_texto_pop_up, "farinha pode ser substituída por farinha sem glúten se pedido.");
            break;
        
            case 1:
                array_push(_texto_pop_up, "chocolate: " + string(_receitas_principais[i].chocolate));
                array_push(_texto_pop_up, "");
                array_push(_texto_pop_up, "leite pode ser substituído por leite vegetal se pedido.");
            break;
        
            case 2:
                array_push(_texto_pop_up, "laranja: " + string(_receitas_principais[i].laranja));
                array_push(_texto_pop_up, "");
                array_push(_texto_pop_up, "(Clique no livro para fechar as receitas)");
            break;
        }
        
		// desenha o pop-up
        scr_draw_pop_up(_texto_pop_up, _estetica);
    }
    
    
    
    
    
}