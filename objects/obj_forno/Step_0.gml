if assando {
	if !alarm_pass{
		alarm_set(0,game_get_speed(gamespeed_fps));
		alarm_pass = true;
	}
	
	var _receita_encontrada = false;
	var _receitas = scr_receitas()
	
	for(var i = 0; i < SABORES_BOLO.ALTURA+1; i++){
		if i != SABORES_BOLO.ALTURA{
			if(
			global.receita_em_producao.baunilha == _receitas[i].baunilha and
			global.receita_em_producao.chocolate == _receitas[i].chocolate and
			global.receita_em_producao.farinha == _receitas[i].farinha and
			global.receita_em_producao.farinhaSg == _receitas[i].farinha_sem_gluten and
			global.receita_em_producao.laranja == _receitas[i].laranja and
			global.receita_em_producao.leite == _receitas[i].leite and
			global.receita_em_producao.leiteVg == _receitas[i].leite_vegetal and
			global.receita_em_producao.ovo == _receitas[i].ovos
			){
				receita_feita = i;
			}
		}else{
			if(
			global.receita_em_producao.baunilha == global.struct_pedido_atual.baunilha and
			global.receita_em_producao.chocolate == global.struct_pedido_atual.chocolate and
			global.receita_em_producao.farinha == global.struct_pedido_atual.farinha and
			global.receita_em_producao.farinhaSg == global.struct_pedido_atual.farinha_sem_gluten and
			global.receita_em_producao.laranja == global.struct_pedido_atual.laranja and
			global.receita_em_producao.leite == global.struct_pedido_atual.leite and
			global.receita_em_producao.leiteVg == global.struct_pedido_atual.leite_vegetal and
			global.receita_em_producao.ovo == global.struct_pedido_atual.ovos
			){
				receita_feita = i;
				
				if global.receita_em_producao.baunilha > 0{
					sabor_realizado = SABORES_BOLO.BAUNILHA
				}
				if global.receita_em_producao.chocolate > 0 {
					sabor_realizado = SABORES_BOLO.CHOCOLATE
				}
				if global.receita_em_producao.laranja > 0 {
					sabor_realizado = SABORES_BOLO.LARANJA
				}
			}else{
				receita_feita = -1;
			}
		}
	}

}

if processo_finalizado {
	switch receita_feita{
		case SABORES_BOLO.BAUNILHA:
		obj_cakes.image_index = 2;
		break;
		case SABORES_BOLO.BAUNILHA_SEM_GLUTEN:
		obj_cakes.image_index = 2;
		break;
		case SABORES_BOLO.BAUNILHA_VEGETAL:
		obj_cakes.image_index = 2;
		break;
		case SABORES_BOLO.CHOCOLATE:
		obj_cakes.image_index = 3;
		break;
		case SABORES_BOLO.CHOCOLATE_SEM_GLUTEN:
		obj_cakes.image_index = 3;
		break;
		case SABORES_BOLO.CHOCOLATE_VEGETAL:
		obj_cakes.image_index = 3;
		break;
		case SABORES_BOLO.LARANJA:
		obj_cakes.image_index = 1;
		break;
		case SABORES_BOLO.LARANJA_SEM_GLUTEN:
		obj_cakes.image_index = 1;
		break;
		case SABORES_BOLO.LARANJA_VEGETAL:
		obj_cakes.image_index = 1;
		break;
		case SABORES_BOLO.ALTURA:
		
		if sabor_realizado == SABORES_BOLO.BAUNILHA{
			obj_cakes.image_index = 2;
		}
		if sabor_realizado == SABORES_BOLO.CHOCOLATE{
			obj_cakes.image_index = 3;
		}
		if sabor_realizado == SABORES_BOLO.LARANJA{
			obj_cakes.image_index = 1;
		}
		
		break;
		default:
		obj_cakes.image_index = 4;
		break;
	}
	
	tempo_atual = 0;
}