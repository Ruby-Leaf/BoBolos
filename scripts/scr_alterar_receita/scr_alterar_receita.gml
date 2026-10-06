// ============================== 
/// @desc cria a característica única do pedido
/// @param {Real} sabor sabor do bolo que o cliente pede
/// @param {Real} tipo_alteracao qual a característica
/// @param {Real | undefined} ingrediente qual item sofre a mudança
/// @param {Real | undefined} qtd caso TROCAR_INGR, deve ser DECIMAL (multiplicar), caso contrário, numeros cheios
/// @return {Struct} a receita modificada
function scr_alterar_receita(sabor, tipo_alteracao, ingrediente, qtd) {
    var _receitas = scr_receitas();
    var _nova_receita = variable_clone(_receitas[sabor]);

    switch (tipo_alteracao) {
        case ALTERACOES_RECEITA.SEM_ALTERACAO:
            // Mantém a receita original sem alterações
        break;

        case ALTERACOES_RECEITA.TROCAR_QTD:
            if (!is_undefined(ingrediente) && !is_undefined(qtd)) {
                troca_qtd_ingred(_nova_receita, ingrediente, qtd);
            } else {
                show_error("O ingrediente ou qtd passado como 'trocar_qtd' é inválido. Recebeu: " + string(ingrediente) + " e " + string(qtd), true);
            }
        break;

        case ALTERACOES_RECEITA.ACRESC_INGREDIENTE:
            if (!is_undefined(ingrediente) && !is_undefined(qtd)) {
                remove_adiciona_item(_nova_receita, true, ingrediente, qtd);
            } else {
                show_error("O ingrediente ou qtd passado como 'acres_ingrediente' é inválido. Recebeu: " + string(ingrediente) + " e " + string(qtd), true);
            }
        break;

        case ALTERACOES_RECEITA.REMOVER_INGREDIENTE:
            if (!is_undefined(ingrediente)) {
                remove_adiciona_item(_nova_receita, false, ingrediente);
            } else {
                show_error("O ingrediente ou qtd passado como 'remover_ingrediente' é inválido. Recebeu: " + string(ingrediente) + " e " + string(qtd), true);
            }
        break;

        default:
            show_error("A alteração do tipo informado não foi encontrada. Recebeu: " + string(tipo_alteracao), true);
        break;
    }

    return _nova_receita;
}

// ============================== 
/// @desc Obtém o nome da variável na struct da receita a partir do enum do ingrediente
/// @param {Enum.INGREDIENTES} item Índice do ingrediente a ser buscado no mapeamento global
/// @return {String} Nome da propriedade na struct (ex: "farinha", "ovos")
function obter_nome_ingrediente(item) {
    if (item >= 0 && item < array_length(global.nome_ingredientes)) {
        return global.nome_ingredientes[item];
    }
    
    show_error("Índice de ingrediente inválido: " + string(item), true);
}

// ============================== 
/// @desc Altera a quantidade de um ingrediente multiplicando seu valor atual
/// @param {Struct} receita Struct da receita que será modificada
/// @param {Enum.INGREDIENTES} item Ingrediente que terá sua quantidade multiplicada
/// @param {Real} qtd Fator de multiplicação
/// @return {Struct} A própria struct da receita com o valor atualizado
function troca_qtd_ingred(receita, item, qtd) {
    var _chave = obter_nome_ingrediente(item);
    
    receita[$ _chave] *= qtd;
    
    return receita;
}

// ============================== 
/// @desc Define a quantidade exata de um ingrediente ou zera o seu valor na receita
/// @param {Struct} receita Struct da receita que será modificada
/// @param {Bool} is_adicionar 'true' para definir uma quantidade, 'false' para zerar o ingrediente
/// @param {Enum.INGREDIENTES} item Ingrediente a ser alterado
/// @param {Real} [qtd]=0 Quantidade a ser definida quando 'is_adicionar' for true
/// @return {Struct} A própria struct da receita com o valor atualizado
function remove_adiciona_item(receita, is_adicionar, item, qtd = 0) {
    var _chave = obter_nome_ingrediente(item);

    if (is_adicionar) {
        receita[$ _chave] = qtd;
    } else {
        receita[$ _chave] = 0;
    }

    return receita;
}