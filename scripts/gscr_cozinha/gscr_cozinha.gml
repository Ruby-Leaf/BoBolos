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
		LARANJASEMGLUTEN,
        BAUNILHASEMGLUTEN,
        CHOCOLATESEMGLUTEM,
		LARANJAVEGETAL,
        BAUNILHAVEGETAL,
        CHOCOLATEVEGETAL,
    }
	enum INGREDIENTES {
		NONE,
		FARINHA,
		LEITE,
		OVO,
		CHOCOLATE,
		LARANJA,
		BAUNILHA,
		FARINHASG,
		LEITEVG,
	}
	
	// ---------- Alterados pelo obj_recipiente
	global.selecionando_ingrediente = false;
	global.conteudo_selecionado = "";
	global.tipo_selecionado = "";
}