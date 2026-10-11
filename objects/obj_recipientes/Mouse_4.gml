// ==============================  
// Ativa o pop_up
// ==============================

if object_exists(obj_controle_sons) obj_controle_sons.play_som_clique();
    
if !global.selecionando_ingrediente{
	global.selecionando_ingrediente = true;
	global.conteudo_selecionado = conteudo_name;
	global.endereco_escolhido = conteudo;
    global.tipo_selecionado = conteudo_tipo;
}