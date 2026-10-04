// ==============================  
// INFORMAÇÕES DOS CRÉDITOS
// ==============================  

// ---------- Escolha do tamanho do pop up
var viewport_center = window_get_height()/2;
var viewport_midle = window_get_width()/2;
var x1 = viewport_midle - 300;
var x2 = viewport_midle + 300;
var y1 = viewport_center - 350;
var y2 = viewport_center + 350;

// ---------- Criação do retângulo 
draw_set_colour(c_dkgray);
draw_set_alpha(.4);
draw_rectangle(x1, y1, x2, y2, false);

scr_reset_draw();

// ------------------------------  
// Inserção de informações
// ------------------------------

// ---------- Títulos
draw_set_font(fnt_h1);
draw_text(viewport_midle - 100, y1 + 40, "Feito por:");
draw_line(x1, y1 + 75, x2, y1 + 75)

scr_reset_draw();