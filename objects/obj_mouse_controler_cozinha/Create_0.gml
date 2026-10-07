// ==============================
// USO DO MOUSE NA COZINHA
// ==============================

// ---------- Set de ingredientes na mão
global.segurando = {
	ingrediente: INGREDIENTES.NONE,
	quantidade: 0,
};

//cria onde os sprites do ingrediente aparecem
instance_create_layer(mouse_x,mouse_y,"GUI",obj_mouse_sprite);

global.receita_concluida = false;