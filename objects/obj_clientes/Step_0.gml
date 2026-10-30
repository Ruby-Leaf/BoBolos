if resposta_foi_lida{
	scr_entrega_pedido();
	global.receita_concluida = false;
	obj_telefone.tocar_telefone();
	layer_set_visible("bolo", false);
	instance_deactivate_object(obj_clientes);
}