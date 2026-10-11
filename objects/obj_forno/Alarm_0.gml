if tempo_atual < tempo_receita{
	
	tempo_atual += 10;
	alarm_set(0,game_get_speed(gamespeed_fps));
}else{
	processo_finalizado = true;
}