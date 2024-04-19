function altera_anim(_estadoatual) 
	{
		switch(_estadoatual)
		{
			case ESTADOS.FELIZ:
			sprite_index = spr_feliz;
			break;
			
			case ESTADOS.ENTEDIADO:
			sprite_index = spr_entediado;
			break;
			
			case ESTADOS.BRINCANDO:
			sprite_index = spr_brincando;
			break;
		
			case ESTADOS.SUJO:
			sprite_index = spr_sujo;
			break;
			
			case ESTADOS.BANHO:
			sprite_index = spr_banho;
			break;
			
			case ESTADOS.FOME:
			sprite_index = spr_fome;
			break;
			
			case ESTADOS.COMENDO:
			sprite_index = spr_comendo;
			break;
			
			case ESTADOS.MORTO:
			sprite_index = spr_lapide;
			break;
		}
		
	}

function ver_nivel(_nivelatual)
{
	var _alteranvl = 0
	
	if (_nivelatual <= 50 and _nivelatual > 0)
	{
		//Diminuição de estado
		_alteranvl = - 1;
	}
	else if ( _nivelatual <= 0)
	{
		//Morto
		_alteranvl = 0;
	}
	else
	{
		//Acrescenta um estado
		_alteranvl = 1;
	}
	return _alteranvl;
}