// ==============================
// INICIA A ANIMAÇÃO DE TROCA DE ESTADO
// ==============================
switch (estado) {
    // ---------- Fade-in
    case 0:
        alpha += velocidade_fade;
        if (alpha >= 1) {
            alpha = 1;
            estado = 1;
            alarm[0] = game_get_speed(gamespeed_fps) * 2; // aguarda 2 segundos
        }
    break;

    // ---------- Fade-out
    case 2:
        alpha -= velocidade_fade;
        if (alpha <= 0) {
            alpha = 0;
            instance_destroy(); // Destrói o objeto ao finalizar o efeito
        }
    break;
}