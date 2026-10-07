// ==============================
// ITENS SEGURADOS
// ==============================
if object_exists(obj_mouse_sprite){
	obj_mouse_sprite.x = mouse_x;
	obj_mouse_sprite.y = mouse_y;
	obj_mouse_sprite.image_index = global.segurando.ingrediente;
	
	if obj_mouse_sprite.image_index != 0{
		cursor_sprite = spr_mouse_hold;
	}
 }