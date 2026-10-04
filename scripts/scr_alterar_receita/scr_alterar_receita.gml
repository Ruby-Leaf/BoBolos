// ============================== 
/// @desc cria a característica única do pedido
/// @param {Real} sabor sabor do bolo que o cliente pede
/// @param {Real} tipo_alteracao qual a característica
/// @param {Real | undefined} ingrediente qual item sofre a mudança
/// @param {Real | undefined} qtd para trocar a quantidade, deve ser < 1, caso contrário, numeros cheios
/// @return {Struct} a receita modificada
function scr_alterar_receita(sabor, tipo_alteracao, ingrediente, qtd){
    var _receitas = scr_receitas();
    var _nova_receita = variable_clone(_receitas[sabor]);
    
    switch (tipo_alteracao) {
        case ALTERACOES_RECEITA.SEM_ALTERACAO:
            // Mantém a receita original sem alterações
        break;
    
        case ALTERACOES_RECEITA.TROCAR_QTD:
            show_debug_message("Receita anterior: " + string(_nova_receita));
            
            if (!is_undefined(ingrediente) && !is_undefined(qtd)) {
                _nova_receita = troca_qtd_ingred(_nova_receita, ingrediente, qtd);
            } else {
                show_error("O ingrediente passado como 'trocar_qtd' é inválido. Recebeu: " + string(ingrediente) + " e " + string(qtd), true)
            }
            
             show_debug_message("Receita atual: " + string(_nova_receita));
        break;
    
        case ALTERACOES_RECEITA.ACRESC_INGREDIENTE:
            // Adiciona ou define um ingrediente na struct
        break;
    
        case ALTERACOES_RECEITA.REMOVER_INGREDIENTE:
            // Remove a chave do ingrediente da struct
        break;
    
        default:
            show_error("A alteração do tipo informado não foi encontrada. Recebeu: " + string(tipo_alteracao), true);
        break;
    }
    
    return _nova_receita;
}

// ============================== 
/// @desc altera a quantidade de um ingrediente específico na receita
/// @param {Struct} receita a struct da receita que será modificada
/// @param {Real} ingrediente_a_modificar o ingrediente que terá sua quantidade alterada
/// @param {Real} qtd o fator de multiplicação
/// @return {Struct} a receita com a quantidade atualizada
function troca_qtd_ingred(receita, ingrediente_a_modificar, qtd) {

    switch (ingrediente_a_modificar) {
        case INGREDIENTES.BAUNILHA:
            if (struct_exists(receita, "baunilha")) receita.baunilha *= qtd;
        break;

        case INGREDIENTES.CHOCOLATE:
            if (struct_exists(receita, "chocolate")) receita.chocolate *= qtd;
        break;

        case INGREDIENTES.FARINHA:
            if (struct_exists(receita, "farinha")) receita.farinha *= qtd;
        break;
        
        case INGREDIENTES.FARINHA_SEM_GLUTEN:
            if (struct_exists(receita, "farinha_sem_gluten")) receita.farinha_sem_gluten *= qtd;
        break;

        case INGREDIENTES.LEITE_VEGETAL:
            if (struct_exists(receita, "leite_vegetal")) receita.leite_vegetal *= qtd;
        break;

        case INGREDIENTES.LARANJA:
            if (struct_exists(receita, "laranja")) receita.laranja *= qtd;
        break;

        case INGREDIENTES.LEITE:
            if (struct_exists(receita, "leite")) receita.leite *= qtd;
        break;

        case INGREDIENTES.OVO:
            if (struct_exists(receita, "ovos")) receita.ovos *= qtd;
        break;

        default:
            show_error("Não é possível gerar uma receita com esse índice de ingrediente. Recebeu: " + string(ingrediente_a_modificar), true);
        break;    
    }
    
    return receita;
}