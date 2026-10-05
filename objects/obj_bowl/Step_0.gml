// ==============================  
// compara a receita no bowl com o banco de dados
// ==============================  

for(var i = 0;i < array_length(receitas);i++){
	if (
	global.receita_em_producao.baunilha == receitas[i].baunilha and
	global.receita_em_producao.chocolate == receitas[i].chocolate and
	global.receita_em_producao.laranja == receitas[i].laranja and
	global.receita_em_producao.farinha == receitas[i].farinha and
	global.receita_em_producao.farinhaSg == receitas[i].farinha_sem_gluten and
	global.receita_em_producao.leite == receitas[i].leite and
	global.receita_em_producao.leiteVg == receitas[i].leite_vegetal and
	global.receita_em_producao.ovo == receitas[i].ovos
	) 
	or 
	(qnt_atual == maximo_de_ingredientes)
	{
		if object_exists(obj_troca_cena){
			obj_troca_cena.visible = true;
		}
	}
}