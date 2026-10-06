// ==============================  
// Selecionando os Ingredientes (Draw)
// ==============================
if global.selecionando_ingrediente {

	// Define a unidade de medida com base no tipo selecionado
	var _sufixo = (global.tipo_selecionado == TIPO_RECIPIENTE.PORCAO) ? " g." : " Uni.";

	// ------------------------------  
	// Pop-up Principal
	// ------------------------------
	var _estetica = {
		cor_fundo: make_colour_rgb(255, 230, 200),
		fontes: [fnt_h2, fnt_h1],
		largura: pop_up_w,
		altura: pop_up_h,
		deslocamento_y: -150,
		espaco_linhas: 60,
	};
	
	var _pop_up_text = [
		global.conteudo_selecionado,
		"<  " + string(qnt_selecionada) + _sufixo + "  >"
	];

	scr_draw_pop_up(_pop_up_text, _estetica);

	// ------------------------------  
	// Botão Confirmar ("Pegar")
	// ------------------------------
	var _estetica_confirm = {
		cor_fundo: make_colour_rgb(15, 82, 186),
		texto_cores: [c_black, c_white],
		fontes: [fnt_p, fnt_h2],
		largura: botao_confirm_w,
		altura: botao_confirm_h,
		deslocamento_y: 0,
		deslocamento_x: 0,
		espaco_linhas: 0,
	};
	
	var _pop_up_text_confirm = ["", "Pegar"];

	scr_draw_pop_up(_pop_up_text_confirm, _estetica_confirm);


	// ------------------------------  
	// Botão Sair ("X")
	// ------------------------------
	var _estetica_exit = {
		cor_fundo: make_colour_rgb(227, 11, 93),
		texto_cores: [c_black, c_white],
		fontes: [fnt_p, fnt_h2],
		largura: botao_exit_w,
		altura: botao_exit_h,
		deslocamento_y: -317,
		deslocamento_x: 290,
		espaco_linhas: 0,
	};
	
	var _pop_up_text_exit = ["", "X"];

	scr_draw_pop_up(_pop_up_text_exit, _estetica_exit);
}