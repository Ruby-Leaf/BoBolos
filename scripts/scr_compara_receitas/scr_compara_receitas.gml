function scr_compara_receitas(_receita_a,_receita_b){
var _chaves = struct_get_names(_receita_a);
    

    if (array_length(_chaves) != struct_names_count(_receita_b)) {
        
		return false;
    }
    
    // 2. Compara os valores chave por chave
    for (var _i = 0; _i < array_length(_chaves); _i++) {
        var _chave = _chaves[_i];
        
        // Verifica se a chave existe na segunda struct
        if (!struct_exists(_receita_b, _chave)) {
			
			
            return false;
        }
        
        // Compara os valores das chaves
        if (_receita_a[$ _chaves] != _receita_b[$ _chaves]) {
			
            return false;
        }
    }
    return true;
}