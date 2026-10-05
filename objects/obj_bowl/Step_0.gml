// ==============================  
// compara a receita no bowl com o banco de dados
// ==============================  

for(var i = 0;i < array_length(receitas);i++){
	if (
	receita_em_producao.baunilha == receitas[i].baunilha and
	receita_em_producao.chocolate == receitas[i].chocolate and
	receita_em_producao.laranja == receitas[i].laranja and
	receita_em_producao.farinha == receitas[i].farinha and
	receita_em_producao.farinhaSg == receitas[i].farinha_sem_gluten and
	receita_em_producao.leite == receitas[i].leite and
	receita_em_producao.leiteVg == receitas[i].leite_vegetal and
	receita_em_producao.ovo == receitas[i].ovos
	){
		show_message("chegou aqui");
	}
}