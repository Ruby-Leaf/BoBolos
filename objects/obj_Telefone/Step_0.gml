if (global.receita_concluida) {
	instance_activate_object(obj_clientes);
	layer_set_visible("bolo",true);
	obj_clientes.image_index = global.cliente_atual.sprite_frame;
}