// ============================== 
/// @desc armazena todas as possibilidades de clientes
/// @return {Array<Struct>} 
function scr_banco_clientes(){
    
    var _todos_clientes = [
        {
            nome: "Larry",
            sprite_frame: 0,
			frame_feliz: 8,
			frame_bravo: 15,
            requisitos_pedidos: [
                scr_alterar_receita(SABORES_BOLO.LARANJA, ALTERACOES_RECEITA.TROCAR_QTD, INGREDIENTES.OVO, 1.5),
				scr_alterar_receita(SABORES_BOLO.BAUNILHA, ALTERACOES_RECEITA.TROCAR_QTD, INGREDIENTES.OVO, 1.5),
				scr_alterar_receita(SABORES_BOLO.LARANJA, ALTERACOES_RECEITA.SEM_ALTERACAO, undefined, undefined),
            ],
            texto_pedidos: [
			"Gostaria de um bolo de laranja, de preferência com 50% mais ovos.", 
			"Gostaria de um bolo de Baunilha, de preferência com 50% mais ovos.",
			"Hoje é para minha mãe, então vamos com os classicos, laranja simples."
			],
            respostas_positivas: ["Obrigado.", "Você manda bem!","Mais um pouco e eu me caso com esse bolo."],
            respostas_negativas: ["Eca! não pedi isso.", "Como ousa, isso está horrivel!"],
        },
        {
            
            nome: "Eldrick",
            sprite_frame: 1,
			frame_feliz: 9,
			frame_bravo: 16,
            requisitos_pedidos: [
				scr_alterar_receita(SABORES_BOLO.CHOCOLATE,ALTERACOES_RECEITA.TROCAR_QTD,INGREDIENTES.CHOCOLATE,2), 
				scr_alterar_receita(SABORES_BOLO.BAUNILHA,ALTERACOES_RECEITA.SEM_ALTERACAO,undefined, undefined), 
				scr_alterar_receita(SABORES_BOLO.LARANJA_SEM_GLUTEN,ALTERACOES_RECEITA.SEM_ALTERACAO,undefined, undefined)
			],
            texto_pedidos: [
			"A Mamãe Noel está de mau humor, chocolate em dobro por favor.",
			"Hoje terá um aniversario na fábrica! Baunilha, por favor.",
			"O papai noel está em uma dieta sem glúten. Um bolo de laranja, por favor."
			],
            respostas_positivas: ["Você vai para a lista dos bonzinhos.", "Salvou a todos nós.","Se algum dia quiser, você pode trabalhar na fábrica."],
            respostas_negativas: ["Só vai ter carvão para você.", "Isso é mal."],
        },
		{
            
            nome: "Blobby",
            sprite_frame: 2,
			frame_feliz: 10,
			frame_bravo: 17,
            requisitos_pedidos: [
			scr_alterar_receita(SABORES_BOLO.CHOCOLATE_VEGETAL,ALTERACOES_RECEITA.SEM_ALTERACAO,undefined, undefined), 
			scr_alterar_receita(SABORES_BOLO.BAUNILHA_VEGETAL,ALTERACOES_RECEITA.TROCAR_QTD,INGREDIENTES.BAUNILHA,2), 
			scr_alterar_receita(SABORES_BOLO.CHOCOLATE_VEGETAL,ALTERACOES_RECEITA.TROCAR_QTD,INGREDIENTES.CHOCOLATE,4)
			],
            texto_pedidos: [
			"Blobby quer chocolate por favor, leite vegetal.",
			"Blobby alérgico a leite. Baunilha, mas blobby quer baunilha em dobro!",
			"Blobby pede chocolate, 4 vezes mais! Blobby pagar. Blobby quer leite vegetal."
			],
            respostas_positivas: ["Blobby feliz!"],
            respostas_negativas: ["ewwwww...", "Blobby triste."],
        },
		{
            
            nome: "Flora",
            sprite_frame: 3,
			frame_feliz: 11,
			frame_bravo: 18,
            requisitos_pedidos: [ 
                scr_alterar_receita(SABORES_BOLO.LARANJA,ALTERACOES_RECEITA.ACRESC_INGREDIENTE,INGREDIENTES.BAUNILHA,2), 
				scr_alterar_receita(SABORES_BOLO.BAUNILHA,ALTERACOES_RECEITA.SEM_ALTERACAO,undefined, undefined),
				scr_alterar_receita(SABORES_BOLO.LARANJA_SEM_GLUTEN,ALTERACOES_RECEITA.REMOVER_INGREDIENTE,INGREDIENTES.OVO,0)
			],
            texto_pedidos: [
			"Adoro a fragrância de laranjas, especialmente quando tem exatamente 2 unidades de baunilha no meu bolo de laranja.",
			"Apesar da baunilha não vir da flor, a flor ainda é linda! Quero meu bolo do jeitinho que você sempre faz.",
			"Após a flor vem o fruto, e após uma ligação da Flora vem um bolo de laranja, mas sem ovos."
			],
            respostas_positivas: ["Como uma brisa na primavera!", "Este sabor desabrocha na boca."],
            respostas_negativas: ["Que desperdício de vida natural nestes ingredientes...", "Prefiria comer folha que isso."],
        },
		{
            
            nome: "L. M. Jonson",
            sprite_frame: 4,
			frame_feliz: 12,
			frame_bravo: 19,
            requisitos_pedidos: [
			scr_alterar_receita(SABORES_BOLO.CHOCOLATE, ALTERACOES_RECEITA.REMOVER_INGREDIENTE, INGREDIENTES.LEITE, 1), 
			scr_alterar_receita(SABORES_BOLO.BAUNILHA, ALTERACOES_RECEITA.SEM_ALTERACAO, undefined, undefined), 
			scr_alterar_receita(SABORES_BOLO.CHOCOLATE, ALTERACOES_RECEITA.TROCAR_QTD, INGREDIENTES.LEITE, 2)
			],
            texto_pedidos: [
			"Hmmmm.... um bolo... chocolate... sem leite...",
			".... baunilha... pode leite nessa... não é para mim...",
			"Chocolate. leite em dobro."
			],
            respostas_positivas: ["Obrigado...", "Isso tem uma cara boa...","Será que vou poder comer? ..."],
            respostas_negativas: ["NÃO FOI O QUE EU PEDI", "ISSO É SERIO?","VOCÊ SABE COZINHAR??"],
        },
		{
            
            nome: "Annie",
            sprite_frame: 5,
			frame_feliz: 13,
			frame_bravo: 20,
            requisitos_pedidos: [
			scr_alterar_receita(SABORES_BOLO.CHOCOLATE, ALTERACOES_RECEITA.ACRESC_INGREDIENTE, INGREDIENTES.LARANJA, 1), 
			scr_alterar_receita(SABORES_BOLO.BAUNILHA, ALTERACOES_RECEITA.TROCAR_QTD, INGREDIENTES.BAUNILHA, 5),
			scr_alterar_receita(SABORES_BOLO.CHOCOLATE, ALTERACOES_RECEITA.TROCAR_QTD, INGREDIENTES.FARINHA_SEM_GLUTEN, 3),
			],
            texto_pedidos: [
			"Oh sim, eu vejo um bolo de chocolate com adição de uma laranja...",
			"Sonhei com um bolo de baunilha em que a quantidade de baunilha seja 5x mais",
			"Pega a visão. Triplo de farinha sem glúten no meu bolo de laranja, que tal?"
			],
            respostas_positivas: ["Vejo um futuro brilhante para você.", "Que comida vislumbrante!"],
            respostas_negativas: ["Desgosto desse conjunto de ingredientes.", "Eu não lembro de ter pedido isso."],
        },
		{
            
            nome: "????",
            sprite_frame: 6,
			frame_feliz: 14,
			frame_bravo: -1, // nunca vai desgostar do bolo
            requisitos_pedidos: [ // ele não possui requisitos
			{}, 
			{}, 
			{}
			],
            texto_pedidos: [
			"...",
			"... ...",
			"... ... ..."
			],
            respostas_positivas: [">< !", "^^ !","...!"],
            respostas_negativas: ["", ""], // não possui falas negativas
        },
    ];
    
    
    return _todos_clientes;
}