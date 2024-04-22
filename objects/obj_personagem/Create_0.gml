
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

global.nvl_feliz = random_range(90, 110); //Feliz --> Entendiado em 50%
global.nvl_limpeza = random_range(90, 110); //Limpeza --> Sujo em 50%
global.nvl_alimento = random_range(90, 110); //Alimento --> Fome em 50%

//Diminuição dos status
taxa_dim_feliz = 0.01;
taxa_dim_limpeza = 0.01;
taxa_dim_fome = 0.01;

//Atualização de taxa de status
alarm[2] = 3*60

//Fade
delay_alterna_estados = 60;
tempo_brincando = 10*60
tempo_comendo = 6*60
tempo_banho = 8*60

//Falas/Arrays
frases_feliz = ["Estou tão contente hoje!", "Que dia maravilhoso!", "Não poderia estar melhor!"]
frases_entediado = ["Nada para fazer... ", "Estou morrendo de tédio!", "Queria brincar um pouco! "]
frases_fome = ["Minha barriga está roncando!", "Que fome! ", "Preciso de algo para comer..."]
frases_sujo = ["Eu me caguei...", "Preciso de um banho, estou muito sujo!", "Minha calda está um nojo!"]

alarm[0] = 5*60;
randomize();