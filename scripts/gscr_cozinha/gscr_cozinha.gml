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
    
    // Nomes dos ingredientes
    global.nome_ingredientes = [];
    global.nome_ingredientes[INGREDIENTES.BAUNILHA] = "baunilha";
    global.nome_ingredientes[INGREDIENTES.CHOCOLATE] = "chocolate";
    global.nome_ingredientes[INGREDIENTES.FARINHA] = "farinha";
    global.nome_ingredientes[INGREDIENTES.FARINHA_SEM_GLUTEN] = "farinha_sem_gluten";
    global.nome_ingredientes[INGREDIENTES.LEITE_VEGETAL] = "leite_vegetal";
    global.nome_ingredientes[INGREDIENTES.LARANJA] = "laranja";
    global.nome_ingredientes[INGREDIENTES.LEITE] = "leite";
    global.nome_ingredientes[INGREDIENTES.OVO] = "ovos";
	
	// ---------- Alterados pelo obj_recipiente
    enum TIPO_RECIPIENTE {
        PORCAO,
        UNIDADE,
    }
	global.selecionando_ingrediente = false;
	global.conteudo_selecionado = "";
	global.tipo_selecionado = TIPO_RECIPIENTE.PORCAO;
	global.endereco_escolhido = INGREDIENTES.NONE;
}