if scr_compara_receitas(global.receita_em_producao,global.struct_pedido_atual) {
	gostou = true;
	image_index = global.cliente_atual.frame_feliz;
}else{
	image_index = global.cliente_atual.frame_bravo;
	
}

pop_up_visible = true

if !gostou and !foi_clickado {
	global.felicidade --;
	foi_clickado = true;
}