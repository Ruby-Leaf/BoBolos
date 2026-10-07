if scr_compara_receitas(global.receita_em_producao,global.struct_pedido_atual) {
	gostou = true;
	image_index = global.cliente_atual.frame_feliz;
}else{
	image_index = global.cliente_atual.frame_bravo;
}
if pop_up_visible{
	scr_entrega_pedido();
}

pop_up_visible = !pop_up_visible;