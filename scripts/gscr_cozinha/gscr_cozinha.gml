function gscr_cozinha(){
    enum ALTERACOES_RECEITA {
        SEM_ALTERACAO,
        TROCAR_QTD,
        ACRESC_INGREDIENTE,
        REMOVER_INGREDIENTE,
    }
    enum SABORES_BOLO {
        LARANJA,
        BAUNILHA,
        CHOCOLATE,
		LARANJA_SEM_GLUTEN,
        BAUNILHA_SEM_GLUTEN,
        CHOCOLATE_SEM_GLUTEN,
		LARANJA_VEGETAL,
        BAUNILHA_VEGETAL,
        CHOCOLATE_VEGETAL,
    }
	enum INGREDIENTES {
		NONE,
		FARINHA,
		LEITE,
		OVO,
		CHOCOLATE,
		LARANJA,
		BAUNILHA,
		FARINHA_SEM_GLUTEN,
		LEITE_VEGETAL,
	}
	
	// ---------- Alterados pelo obj_recipiente
	global.selecionando_ingrediente = false;
	global.conteudo_selecionado = "";
	global.tipo_selecionado = "";
}