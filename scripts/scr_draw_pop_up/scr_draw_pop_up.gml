// ============================== 
/// @desc Cria um draw GUI na centralizado. Use 'noone' nos campos que não pretende alterar.
/// @param {Array<String>} textos_arr Textos que serão exibidos, cada índice sendo uma quebra de linha
/// @param {Struct} opcoes Todos os detalhes de estética (checar nt_estetica)
function scr_draw_pop_up(textos_arr, opcoes){
	var _cor_default_texto = c_black;
	var _fonte_default = fnt_p;

	valida_estetica_popup(opcoes);
	
	var _estetica = {
		cor_fundo: c_ltgray,
		texto_cores: [_cor_default_texto], 
		fontes: [_fonte_default],
		largura: room_width / 2,
		altura: room_height / 2,
		espaco_linhas: 30,
		deslocamento_x: 0,
		deslocamento_y: 0,
	}
		
	var _propriedades = variable_struct_get_names(opcoes);
	for (var i = 0; i < array_length(_propriedades); i++) {
		var _nome = _propriedades[i];
		var _valor = variable_struct_get(opcoes, _nome);
		variable_struct_set(_estetica, _nome, _valor);
	}
	
	valida_estetica_popup(_estetica);
	verifica_dados_struct(_estetica, textos_arr);
	
	// Tamanho e Posição do Pop-up
	var pop_up_width = _estetica.largura;
	var pop_up_height = _estetica.altura;
	var pop_up_x = room_width / 2 - pop_up_width / 2 + _estetica.deslocamento_x;
	var pop_up_y = room_height / 2 - pop_up_height / 2 + _estetica.deslocamento_y;
	
	// Desenha Fundo
	draw_set_color(_estetica.cor_fundo);
	draw_rectangle(pop_up_x, pop_up_y, pop_up_x + pop_up_width, pop_up_y + pop_up_height, false);
		
	// ----------------------------------------------------
	// Cálculo da altura total do bloco
	// ----------------------------------------------------
	var altura_total_texto = 0;
	var _qtd_linhas = array_length(textos_arr);

	for (var i = 0; i < _qtd_linhas; i++) {
		// Define a fonte correspondente para medir a altura exata desta linha
		if (i < array_length(_estetica.fontes)) {
			draw_set_font(_estetica.fontes[i]);
		} else {
			draw_set_font(_fonte_default);
		}

		altura_total_texto += string_height_ext(textos_arr[i], _estetica.espaco_linhas, pop_up_width);
	
		if (i < _qtd_linhas - 1) {
			altura_total_texto += _estetica.espaco_linhas; // Espaçamento entre linhas
		}
	}

	// ----------------------------------------------------
	// PASSO 2: Escrita do texto
	// ----------------------------------------------------
	// Define alinhamentos padrão
	draw_set_halign(fa_center);
	draw_set_valign(fa_top); // Garante que a origem do Y seja o topo da linha

	var x_texto = pop_up_x + (pop_up_width / 2);
	var y_texto = pop_up_y + (pop_up_height / 2) - (altura_total_texto / 2);

	for (var i = 0; i < _qtd_linhas; i++) {
		// Define Cor
		if (i < array_length(_estetica.texto_cores)) {
			draw_set_color(_estetica.texto_cores[i]);
		} else {
			draw_set_color(_cor_default_texto);
		}

		// Define Fonte
		if (i < array_length(_estetica.fontes)) {
			draw_set_font(_estetica.fontes[i]);
		} else {
			draw_set_font(_fonte_default);
		}
		
		// Desenha o texto
		draw_text_ext(x_texto, y_texto, textos_arr[i], _estetica.espaco_linhas, pop_up_width);
		
		// Avança a posição Y para a próxima linha
		y_texto += string_height_ext(textos_arr[i], _estetica.espaco_linhas, pop_up_width) + _estetica.espaco_linhas;
	}
	
	scr_reset_draw();
}

// ==============================
/// @desc Verifica a validade e o formato dos dados para o pop-up.
/// @param {Struct} _estetica Struct contendo cor_fundo, texto_cores, fontes, etc.
/// @param {Array<String>} _textos Array de textos.
function verifica_dados_struct(_estetica, _textos) {
    // ===================================
    // 1. VERIFICAÇÃO DO TIPO DE DADO PRINCIPAL (Array/Numeric)
    // ===================================
	
    if (!is_array(_textos)) show_error("pop up: textos_arr precisa ser um array.", true);
    if (!is_array(_estetica.texto_cores)) show_error("pop up: texto_cores precisa ser um array.", true);
    if (!is_array(_estetica.fontes)) show_error("pop up: fontes precisa ser um array.", true);
    if (!is_numeric(_estetica.cor_fundo)) show_error("pop up: cor_fundo precisa ser Constant.color ou número.", true);
	if (!is_numeric(_estetica.espaco_linhas)) show_error("pop up: espaco_linhas precisa ser um número.", true);
	if (!is_numeric(_estetica.deslocamento_x)) show_error("pop up: deslocamento_x precisa ser um número.", true);
	if (!is_numeric(_estetica.deslocamento_y)) show_error("pop up: deslocamento_y precisa ser um número.", true);
    
    // ===================================
    // 2. VERIFICAÇÃO DE VAZIO E TAMANHO
    // ===================================
    
    var _tam_textos = array_length(_textos);
    var _tam_cores = array_length(_estetica.texto_cores);
    var _tam_fontes = array_length(_estetica.fontes);
    
    if (_tam_textos == 0) show_error("pop up: Array de textos para pop up está vazio.", true);
    if (_tam_cores == 0) show_error("pop up: Array de cores de textos para pop up está vazio.", true);
    if (_tam_fontes == 0) show_error("pop up: Array de fontes para pop up está vazio.", true);
    
    // ===================================
    // 3. VERIFICAÇÃO DO CONTEÚDO (Código por IA, eu não tenho ideia de como funcionam esses mod)
    // ===================================
    for (var i = 0; i < _tam_textos; i++) {
        
        if (!is_string(_textos[i])) {
            show_error("pop up: Índice " + string(i) + " do texto é inválido. Precisa ser string, mas é " + typeof(_textos[i]) + ".", true);
        }
        
        var _cor_indice = i % _tam_cores;
        var _cor_valor = _estetica.texto_cores[_cor_indice];
        
        if (!is_numeric(_cor_valor) || _cor_valor < 0) {
            show_error("pop up: Cor inválida no índice " + string(_cor_indice) + " do array 'texto_cores'. Precisa ser Constant.color ou número inteiro não negativo.", true);
        }
    }
}

// ============================== 
/// @desc Verifica se o struct de estética contém apenas as propriedades esperadas.
/// @param {Struct} _struct O struct de estética opcional (options) passado para a função principal.
function valida_estetica_popup(_struct) {
	var _propriedades = variable_struct_get_names(_struct);
	
	if (!array_length(_propriedades)) return;
	
    var _mapa_validos = {
        cor_fundo: true, 
        texto_cores: true, 
        fontes: true, 
        largura: true, 
        altura: true,
		espaco_linhas: true,
		deslocamento_x: true,
		deslocamento_y: true,
    };
    
    for (var i = 0; i < array_length(_propriedades); i++) {
        var _nome = _propriedades[i];
       
        if (!variable_struct_exists(_mapa_validos, _nome)) {
             show_error("Propriedade de estética '" + _nome + "' não é válida. O struct de opções deve conter apenas chaves de estilo válidas.", true);
        }
    }
}