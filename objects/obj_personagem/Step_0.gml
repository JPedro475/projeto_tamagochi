if (global.estado_atual == ESTADOS.FELIZ)
{
	 global.nvl_feliz -= taxa_dim_feliz;
	 global.nvl_alimento -= taxa_dim_fome;
	 global.nvl_limpeza -= taxa_dim_limpeza;
} 
else if (global.estado_atual == ESTADOS.ENTEDIADO) global.nvl_feliz -= taxa_dim_feliz;
else if (global.estado_atual == ESTADOS.FOME) global.nvl_alimento -= taxa_dim_fome;
else if (global.estado_atual == ESTADOS.SUJO) global.nvl_limpeza -= taxa_dim_limpeza;



var _altera_felicidade = ver_nivel(global.nvl_feliz)
var _altera_alimento = ver_nivel(global.nvl_alimento)
var _altera_limpeza =  ver_nivel(global.nvl_limpeza)

switch (global.estado_atual)
{
	case ESTADOS.FELIZ:
	#region case_feliz
	
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
	else if (_altera_alimento == -1)
	{
		global.alternando = true;
		if (delay_alterna_estados > 0)
		{
			delay_alterna_estados -= 1;
		}
		else
		{
			global.estado_atual = ESTADOS.FOME;
			delay_alterna_estados = 60;
		}
	}
	else if (_altera_limpeza == -1)
	{
		global.alternando = true;
		if (delay_alterna_estados > 0)
		{
			delay_alterna_estados -=1;
		}
		else
		{
			global.estado_atual = ESTADOS.SUJO;
			delay_alterna_estados = 60;
		}
	}
	
	break;
	#endregion
	
	case ESTADOS.ENTEDIADO:
	#region case_entediado
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
	#endregion

	case ESTADOS.BRINCANDO:
	#region case_brincando
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
	#endregion
	
	case ESTADOS.SUJO:
	#region case_sujo
	if (_altera_limpeza == 0)
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
	else if (_altera_limpeza == 1)
	{
		global.alternando = true;
		if(delay_alterna_estados > 0)
		{
			delay_alterna_estados -= 1;
		}
		else
		{
			global.estado_atual = ESTADOS.BANHO;
			delay_alterna_estados = 60;
		}
		
	}
	break;
	#endregion
	
	case ESTADOS.BANHO:
	#region case_banho
	if(tempo_banho > 0 )
	{
		if  (tempo_banho == 60) 
		{
			global.alternando = true;
		}
		tempo_banho -= 1;
	}
	else
	{
		tempo_banho = 8*60;
		global.estado_atual = ESTADOS.FELIZ;
	}
	break;
	#endregion
	
	case ESTADOS.FOME:
	#region case_fome
	if (_altera_alimento == 0)
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
	else if (_altera_alimento == 1)
	{
		global.alternando = true;
		if(delay_alterna_estados > 0)
		{
			delay_alterna_estados -= 1;
		}
		else
		{
			global.estado_atual = ESTADOS.COMENDO;
			delay_alterna_estados = 60;
		}
		
	}
	break;
	#endregion
	
	case ESTADOS.COMENDO:
	#region case_comendo
	if(tempo_comendo > 0 )
	{
		if  (tempo_comendo == 60) 
		{
			global.alternando = true;
		}
		tempo_comendo -= 1;
	}
	else
	{
		tempo_comendo = 6*60;
		global.estado_atual = ESTADOS.FELIZ;
	}
	break;
	#endregion
	
	case ESTADOS.MORTO:
	#region case_morto
	alarm[1] = 1;
	global.estado_atual = noone;
	
	
	
	
	break;
	#endregion
	
}

altera_anim(global.estado_atual);