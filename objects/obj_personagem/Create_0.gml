
enum ESTADOS
{
	FELIZ, //0
	ENTEDIADO, //1
	BRINCANDO, //2 
	SUJO, //3
	BANHO, //4
	FOME, //5
	COMENDO, //6
	MORTO //7
}

global.estado_atual = ESTADOS.FELIZ


//Medição de status
//Chegar <50 jogador deverá agir
//Chegar =0 personagem morrerá

global.nvl_feliz = 100; //Feliz --> Entendiado em 50%
global.nvl_limpeza = 100; //Limpeza --> Sujo em 50%
global.nvl_alimento = 100; //Alimento --> Fome em 50%

//Diminuição dos status
taxa_dim_feliz = 0.1;
taxa_dim_limpeza = 0.06;
taxa_dim_fome = 0.04;

//Fade
delay_alterna_estados = 60;


tempo_brincando = 10*60
tempo_comendo = 10*60
tempo_banho = 10*60