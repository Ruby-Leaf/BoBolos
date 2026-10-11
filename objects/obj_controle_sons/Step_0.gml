switch (room) {
	case rm_salao:
        if (!audio_is_playing(snd_toque_telefone) && 
        global.estado_telefone == ESTADOS_TELEFONE.TOCANDO) {
            audio_play_sound(snd_toque_telefone, 1, true);
        }
        
        if (audio_is_playing(snd_toque_telefone) &&
        global.estado_telefone != ESTADOS_TELEFONE.TOCANDO) {
            audio_stop_sound(snd_toque_telefone);
        }
    break; 
}
