if(global.estado_atual != ESTADOS.BRINCANDO) global.nvl_feliz -= taxa_dim_feliz;
if(global.estado_atual != ESTADOS.COMENDO) global.nvl_alimento -= taxa_dim_fome;
if(global.estado_atual != ESTADOS.BANHO) global.nvl_limpeza -= taxa_dim_limpeza;

var _altera_felicidade = ver_nivel(global.nvl_feliz)
var _altera_alimento = ver_nivel(global.nvl_alimento)
var _altera_limpeza =  ver_nivel(global.nvl_limpeza)

switch (global.estado_atual)
{
	case ESTADOS.FELIZ:
	if (_altera_felicidade == -1)
	{
		//Fade
		global.alternando = true;
		if (delay_alterna_estados > 0)
		{
			delay_alterna_estados -= 1;
		}
		else
		{
			global.estado_atual = ESTADOS.ENTEDIADO;
			delay_alterna_estados = 60;
		}
	}
	break;
	
	case ESTADOS.ENTEDIADO:
	if (_altera_felicidade == 0)
	{
		global.alternando = true;
		if(delay_alterna_estados > 0)
		{
			delay_alterna_estados -= 1;
		}
		else
		{
			global.estado_atual = ESTADOS.MORTO;
			delay_alterna_estados = 60;
		}
	}
	else if (_altera_felicidade == 1)
	{
		global.alternando = true;
		if(delay_alterna_estados > 0)
		{
			delay_alterna_estados -= 1;
		}
		else
		{
			global.estado_atual = ESTADOS.BRINCANDO;
			delay_alterna_estados = 60;
		}
		
	}
	
	break;
	
	case ESTADOS.BRINCANDO:
	
	if(tempo_brincando > 0 )
	{
		if  (tempo_brincando == 60) 
		{
			global.alternando = true;
		}
		tempo_brincando -= 1;
	}
	else
	{
		tempo_brincando = 10*60;
		global.estado_atual = ESTADOS.FELIZ;
	}
	
	break;
	
	case ESTADOS.SUJO:
	break;
	
	case ESTADOS.BANHO:
	break;
	
	case ESTADOS.FOME:
	break;
	
	case ESTADOS.COMENDO:
	break;
	
	case ESTADOS.MORTO:
	break;
	
}

altera_anim(global.estado_atual);