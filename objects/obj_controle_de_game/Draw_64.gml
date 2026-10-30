// ------------------------------  
// se em jogo desenha a felicidade dos clientes
// ------------------------------

// ---------- verifica a room

var _salao = asset_get_index(rm_salao);
var _cozina = asset_get_index(rm_cozinha);
var _forno = asset_get_index(rm_cozinha_pt_2);
if room == _salao or room == _cozina or room == _forno {
	draw_set_colour(c_black);
	draw_set_font(fnt_h1);
	draw_text(648,62,string(global.felicidade));
}