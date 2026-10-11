if obj_forno.processo_finalizado{
	var _rm_salao = asset_get_index("rm_salao")
	global.receita_concluida = true;
	room_goto(_rm_salao);
}