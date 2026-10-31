// ==============================  
// cria a resposta visual para a feat de felicidade
// ==============================  
mapeamento = 0; // mapeia os rostos

for(var i = 0; i < global.felicidade; i++) {
	mapeamento ++;
	var _x = x + ((sprite_get_width(asset_get_index(spr_felicidade))*i)+ 74 *i);
	instance_create_layer(_x,y,"GUI_obj",obj_mark_felicidade);	
}