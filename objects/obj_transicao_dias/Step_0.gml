switch (estado) {
    case 0: // Fade In (Ficar lentamente na cor)
        alpha += velocidade_fade;
        if (alpha >= 1) {
            alpha = 1;
            estado = 1; // Muda para o estado de espera
            alarm[0] = game_get_speed(gamespeed_fps) * 2; // Espera 5 segundos (no GM:Studio/G2 use game_get_speed(gamespeed_fps) * 5)
        }
        break;

    case 2: // Fade Out (Desaparecer lentamente)
        alpha -= velocidade_fade;
        if (alpha <= 0) {
            alpha = 0;
            instance_destroy(); // Destrói o objeto ao finalizar o efeito
        }
        break;
}