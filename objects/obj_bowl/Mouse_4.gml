// ==============================
// passa o ingrediente da mão para o recepiente
// ==============================

switch global.segurando.ingrediente{
	case INGREDIENTES.FARINHA:
	receita_em_producao.farinha = global.segurando.quantidade;
	break
	
	case INGREDIENTES.FARINHA_SEM_GLUTEN:
	receita_em_producao.farinhaSg = global.segurando.quantidade;
	break
	
	case INGREDIENTES.LEITE:
	receita_em_producao.leite = global.segurando.quantidade;
	break
	
	case INGREDIENTES.LEITE_VEGETAL:
	receita_em_producao.leiteVg = global.segurando.quantidade;
	break
	
	case INGREDIENTES.OVO:
	receita_em_producao.ovo = global.segurando.quantidade;
	break
	
	case INGREDIENTES.CHOCOLATE:
	receita_em_producao.chocolate = global.segurando.quantidade;
	break
	
	case INGREDIENTES.BAUNILHA:
	receita_em_producao.baunilha = global.segurando.quantidade;
	break
	
	case INGREDIENTES.LARANJA:
	receita_em_producao.laranja = global.segurando.quantidade;
	break
	
	case INGREDIENTES.NONE:
	break
}


// ---------- limpa a mão
	global.segurando.ingrediente = INGREDIENTES.NONE;
	global.segurando.quantidade = 0;
	
	show_message(receita_em_producao);