if gostou and !tocou_som {
	obj_controle_sons.play_som_pedido_correto();
	tocou_som = true;
}
if !gostou and !tocou_som{
	obj_controle_sons.play_som_pedido_incorreto();
	tocou_som = true;
}