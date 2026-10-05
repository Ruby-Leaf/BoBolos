function scr_receitas(){
    var _todas_receitas = [];
        
    _todas_receitas[SABORES_BOLO.LARANJA] = {
        ovos: 2,
        farinha: 300,
        leite: 250,
        laranja: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.CHOCOLATE] = {
        ovos: 2,
        farinha: 300,
        leite: 250,
        chocolate: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.BAUNILHA] = {
        ovos: 2,
        farinha: 300,
        leite: 250,
        baunilha: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.LARANJA_SEM_GLUTEN] = {
        ovos: 2,
        farinha_sem_gluten: 300,
        leite: 250,
        laranja: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.CHOCOLATE_SEM_GLUTEN] = {
        ovos: 2,
        farinha_sem_gluten: 300,
        leite: 250,
        chocolate: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.BAUNILHA_SEM_GLUTEN] = {
        ovos: 2,
        farinha_sem_gluten: 300,
        leite: 250,
        baunilha: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.LARANJA_VEGETAL] = {
        ovos: 2,
        farinha: 300,
        leite_vegetal: 250,
        laranja: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.CHOCOLATE_VEGETAL] = {
        ovos: 2,
        farinha: 300,
        leite_vegetal: 250,
        chocolate: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.BAUNILHA_VEGETAL] = {
        ovos: 2,
        farinha: 300,
        leite_vegetal: 250,
        baunilha: 5, 
    };
    
    return _todas_receitas;
}