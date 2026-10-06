function scr_receitas(){
    var _todas_receitas = [];
        
    _todas_receitas[SABORES_BOLO.LARANJA] = {
        ovos: 2,
        farinha: 300,
		farinha_sem_gluten: 0,
        leite: 200,
		leite_vegetal: 0,
        laranja: 5, 
		chocolate: 0, 
		baunilha: 0, 
    };
	
	_todas_receitas[SABORES_BOLO.CHOCOLATE] = {
        ovos: 2,
        farinha: 300,
		farinha_sem_gluten: 0,
        leite: 200,
		leite_vegetal: 0,
        laranja: 0, 
		chocolate: 5, 
		baunilha: 0, 
    };
	
	_todas_receitas[SABORES_BOLO.BAUNILHA] = {
        ovos: 2,
        farinha: 300,
		farinha_sem_gluten: 0,
        leite: 200,
		leite_vegetal: 0,
        laranja: 0, 
		chocolate: 0, 
		baunilha: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.LARANJA_SEM_GLUTEN] = {
        ovos: 2,
        farinha: 0,
		farinha_sem_gluten: 300,
        leite: 200,
		leite_vegetal: 0,
        laranja: 5, 
		chocolate: 0, 
		baunilha: 0, 
    };
	
	_todas_receitas[SABORES_BOLO.CHOCOLATE_SEM_GLUTEN] = {
        ovos: 2,
        farinha: 0,
		farinha_sem_gluten: 300,
        leite: 200,
		leite_vegetal: 0,
        laranja: 0, 
		chocolate: 5, 
		baunilha: 0, 
    };
	
	_todas_receitas[SABORES_BOLO.BAUNILHA_SEM_GLUTEN] = {
        ovos: 2,
        farinha: 0,
		farinha_sem_gluten: 300,
        leite: 200,
		leite_vegetal: 0,
        laranja: 0, 
		chocolate: 0, 
		baunilha: 5, 
    };
	
	_todas_receitas[SABORES_BOLO.LARANJA_VEGETAL] = {
        ovos: 2,
        farinha: 300,
		farinha_sem_gluten: 0,
        leite: 0,
		leite_vegetal: 200,
        laranja: 5, 
		chocolate: 0, 
		baunilha: 0, 
    };
	
	_todas_receitas[SABORES_BOLO.CHOCOLATE_VEGETAL] = {
       ovos: 2,
        farinha: 300,
		farinha_sem_gluten: 0,
        leite: 0,
		leite_vegetal: 200,
        laranja: 0, 
		chocolate: 5, 
		baunilha: 0, 
    };
	
	_todas_receitas[SABORES_BOLO.BAUNILHA_VEGETAL] = {
        ovos: 2,
        farinha: 300,
		farinha_sem_gluten: 0,
        leite: 0,
		leite_vegetal: 200,
        laranja: 0, 
		chocolate: 0, 
		baunilha: 5, 
    };
    
    return _todas_receitas;
}