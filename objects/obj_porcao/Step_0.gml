// ==============================  
// Com o pop-up aberto
// ==============================
if global.tipo_selecionado == "porção"{
	if global.selecionando_ingrediente {
		// ---------- ponteiro do mouse
		var _px = mouse_x;
		var _py = mouse_y;
	
		// ---------- escolhendo a quantidade de ingredientes no pop_up
	
		//diminuir
		var _x1_l = room_width / 2 - botao_exit_w / 2 - 115;
		var _x2_l = _x1_l + botao_exit_w+30;
		var _y1_l = room_height / 2 - botao_exit_h / 2 - 95;
		var _y2_l = _y1_l + botao_exit_h;
	
		//aumentar
		var _x1_r = room_width / 2 - botao_exit_w / 2 + 85;
		var _x2_r = _x1_r + botao_exit_w+30;
		var _y1_r = room_height / 2 - botao_exit_h / 2 - 95;
		var _y2_r = _y1_r + botao_exit_h;
	
		//diminui a var qnt_selecionada
		if point_in_rectangle(_px,_py,_x1_l,_y1_l,_x2_l,_y2_l){
			if mouse_check_button_pressed(mb_left){
			 if qnt_selecionada > 0 {
				qnt_selecionada-=100;
			 }
			}
		}
	
		//aumenta a var qnt_selecionada
		if point_in_rectangle(_px,_py,_x1_r,_y1_r,_x2_r,_y2_r){
			if mouse_check_button_pressed(mb_left){
				if qnt_selecionada < 900 {
				qnt_selecionada+=100
				}
			}
		}
	
	
		// ---------- fechando o pop_up
	
		//cancelando a seleção
		var _x1_exit = room_width / 2 - botao_exit_w / 2 + 290;
		var _x2_exit = _x1_exit + botao_exit_w;
		var _y1_exit = room_height / 2 - botao_exit_h / 2 -317;
		var _y2_exit = _y1_exit + botao_exit_h;
	
		if point_in_rectangle(_px,_py,_x1_exit,_y1_exit,_x2_exit,_y2_exit){
			if mouse_check_button(mb_left){
				global.selecionando_ingrediente = false;
			}
		}
	
		//confirmando a seleção
		var _x1_confirm = room_width / 2 - botao_confirm_w / 2 + 0;
		var _x2_confirm = _x1_confirm + botao_confirm_w;
		var _y1_confirm = room_height / 2 - botao_confirm_h / 2 + 0;
		var _y2_confirm = _y1_confirm + botao_confirm_h;
	
		if point_in_rectangle(_px,_py,_x1_confirm,_y1_confirm,_x2_confirm,_y2_confirm){
			if mouse_check_button(mb_left){
			
				// ---------- Passando os ingredientes para a mão ao fim do processo
			
				global.segurando.ingrediente = conteudo;
				global.segurando.quantidade = qnt_selecionada;
			
				global.selecionando_ingrediente = false;
			}
		}
	
	
	
	}else{
		qnt_selecionada = 0
	}
}