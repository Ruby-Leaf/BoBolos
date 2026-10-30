if mouse_check_button_pressed(mb_left){
	cursor_sprite = spr_mouse_hold;
}
if mouse_check_button_released(mb_left){
	cursor_sprite = spr_mouse;
}


// ------------------------------  
// se em jogo manipula e verifica a felicidade dos clientes
// ------------------------------

// ---------- verifica a room

var _salao = asset_get_index(rm_salao);
var _cozina = asset_get_index(rm_cozinha);
var _forno = asset_get_index(rm_cozinha_pt_2);
if room == _salao or room == _cozina or room == _forno {
	
	if global.felicidade == 0 and obj_clientes.resposta_foi_lida{
		game_restart();
		room_goto(asset_get_index(rm_menu));
	}
}