if assando {
	if !alarm_pass{
		alarm_set(0,game_get_speed(gamespeed_fps));
		alarm_pass = true;
	}
}

if processo_finalizado{
	show_message("chegou aqui")
}