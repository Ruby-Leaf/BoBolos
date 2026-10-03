// ==============================  
// Selecionando os Ingredientes
// ==============================
if global.tipo_selecionado == "porção" {
	if global.selecionando_ingrediente {

	// ------------------------------  
	// Pop-up para selecionar a quantidade dos ingredientes
	// ------------------------------


	// ---------- Estilo do pop-up
	var _estetica = {
	        cor_fundo: make_colour_rgb(255, 230, 200),
		    fontes: [fnt_h2,fnt_h1],
		    largura: pop_up_w,
		    altura: pop_up_h,
		    deslocamento_y: -150,
			espaco_linhas: 60,
	    }
	
	// ---------- conteudo do pop-up
	var _pop_up_text = [
		global.conteudo_selecionado,
		"<  "+string(qnt_selecionada)+" g."+"  >",
	];

	// ---------- Gerando o pop-up


		scr_draw_pop_up(_pop_up_text,_estetica)



	// ------------------------------  
	// botão para confirmar a seleção
	// ------------------------------

	// ---------- Estilo do botão
	var _estetica_confirm = {
	        cor_fundo: make_colour_rgb(15,82,186),
			texto_cores: [c_black,c_white],
		    fontes: [fnt_p,fnt_h2],
		    largura: botao_confirm_w,
		    altura: botao_confirm_h,
		    deslocamento_y: 0,
			deslocamento_x: 0,
			espaco_linhas: 0,
	    };
	
	// ---------- conteudo do botão
	var _pop_up_text_confirm = [
		"",
		"Pegar",
	];
	// ---------- Gerando o botão

	scr_draw_pop_up(_pop_up_text_confirm,_estetica_confirm);

	// ------------------------------  
	// botão para fechar o pop-up
	// ------------------------------

	// ---------- Estilo do botão
	var _estetica_exit = {
	        cor_fundo: make_colour_rgb(227,11,93),
			texto_cores: [c_black,c_white],
		    fontes: [fnt_p,fnt_h2],
		    largura: botao_exit_w,
		    altura: botao_exit_h,
		    deslocamento_y: -317,
			deslocamento_x: 290,
			espaco_linhas: 0,
	    };
	
	// ---------- conteudo do botão
	var _pop_up_text_exit = [
		"",
		"X",
	];

	// ---------- Gerando o botão

		scr_draw_pop_up(_pop_up_text_exit,_estetica_exit);
	
	}
}