if !assando{
	if object_exists(obj_controle_sons) obj_controle_sons.play_som_fogo();
    global.segurando.ingrediente = INGREDIENTES.NONE;
    assando = true;
}