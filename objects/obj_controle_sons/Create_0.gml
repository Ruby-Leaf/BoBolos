if (!audio_is_playing(snd_musica_fundo)) audio_play_sound(snd_musica_fundo, 0, true);
    
function play_som_clique() {
    if (!audio_is_playing(snd_clique)) {
        audio_play_sound(snd_clique, 1, false);
    } else {
        audio_stop_sound(snd_clique);
        audio_play_sound(snd_clique, 1, false);
    }
}

function play_som_fogo() {
    if (!audio_is_playing(snd_fogo_forno)) audio_play_sound(snd_fogo_forno, 1, false);
}

function play_som_pedido_correto() {
    if (!audio_is_playing(snd_pedido_correto)) audio_play_sound(snd_pedido_correto, 1, false);
}

function play_som_pedido_incorreto() {
    if (!audio_is_playing(snd_pedido_incorreto)) audio_play_sound(snd_pedido_incorreto, 1, false);
}