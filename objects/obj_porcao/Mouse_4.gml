// ==============================  
// Ativa o pop_up
// ==============================

if !global.selecionando_ingrediente{
	global.selecionando_ingrediente = true;
	global.conteudo_selecionado = conteudo_name;
	global.endereco_escolhido = conteudo;
	global.tipo_selecionado = "porção"
}