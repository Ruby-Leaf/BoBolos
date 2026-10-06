// ==============================
// passa o ingrediente da mão para o recepiente
// ==============================

switch global.segurando.ingrediente{
	case INGREDIENTES.FARINHA:
	global.receita_em_producao.farinha += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.FARINHA{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.FARINHA;
	}
	break
	
	case INGREDIENTES.FARINHA_SEM_GLUTEN:
	global.receita_em_producao.farinhaSg += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.FARINHA_SEM_GLUTEN{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.FARINHA_SEM_GLUTEN;
	}
	break
	
	case INGREDIENTES.LEITE:
	global.receita_em_producao.leite += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.LEITE{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.LEITE;
	}
	break
	
	case INGREDIENTES.LEITE_VEGETAL:
	global.receita_em_producao.leiteVg += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.LEITE_VEGETAL{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.LEITE_VEGETAL;
	}
	break
	
	case INGREDIENTES.OVO:
	global.receita_em_producao.ovo += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.OVO{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.OVO;
	}
	break
	
	case INGREDIENTES.CHOCOLATE:
	global.receita_em_producao.chocolate += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.CHOCOLATE{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.CHOCOLATE;
	}
	break
	
	case INGREDIENTES.BAUNILHA:
	global.receita_em_producao.baunilha += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.BAUNILHA{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.BAUNILHA;
	}
	break
	
	case INGREDIENTES.LARANJA:
	global.receita_em_producao.laranja += global.segurando.quantidade;
	
	if ultimo_ingrediente != INGREDIENTES.LARANJA{
		// ---------- controla o limite de ingredientes
		qnt_atual++
		ultimo_ingrediente = INGREDIENTES.LARANJA;
	}
	break
	
	case INGREDIENTES.NONE:
	break
}


// ---------- limpa a mão
	global.segurando.ingrediente = INGREDIENTES.NONE;
	global.segurando.quantidade = 0;
	image_index = qnt_atual;