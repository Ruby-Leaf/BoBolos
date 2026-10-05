// ==============================  
// Receita para comparação
// ==============================  

receitas = scr_receitas() // declara as receitas possiveis

global.receita_em_producao = {
	farinha: 0,
	farinhaSg: 0,
	ovo: 0,
	leite: 0,
	leiteVg : 0,
	chocolate:0,
	baunilha: 0,
	laranja: 0,
};

// ---------- controla o limite de ingredientes
maximo_de_ingredientes = 7;
qnt_atual = 0;

ultimo_ingrediente = INGREDIENTES.NONE; // o usuario é burro, então adcionaer parceladamente os ingredientes não aumenta a contagem