// Desenha o retângulo cobrindo toda a tela da GUI
draw_set_color(cor_fundo);
draw_set_alpha(alpha);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// seta as configurações do texto
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_h1);

var _texto = "Fim do dia " + string(floor(global.pedidos_atendidos/global.clientes_por_dia));

// Desenha no centro exato da tela
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, _texto);

scr_reset_draw();