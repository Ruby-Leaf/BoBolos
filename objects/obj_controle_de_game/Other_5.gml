//reseta as globais quando o jogo termina

if global.felicidade == 0{
instance_deactivate_object(obj_controle_felicidade);
randomize();
gscr_cozinha();
gscr_telefone();
gscr_game();
}