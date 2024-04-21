var  _frase_aleatoria = noone;

switch(global.estado_atual)
{
	case ESTADOS.FELIZ:
	_frase_aleatoria = choose(frases_feliz[0], frases_feliz[1], frases_feliz[2]);
	break;
	
	case ESTADOS.ENTEDIADO:
	_frase_aleatoria = choose(frases_entediado[0], frases_entediado[1], frases_entediado[2]);
	break;
	
	case ESTADOS.FOME:
	_frase_aleatoria = choose(frases_fome[0], frases_fome[1], frases_fome[2]);
	break;
	
	case ESTADOS.SUJO:
	_frase_aleatoria = choose(frases_sujo[0], frases_sujo[1], frases_sujo[2]);
	break;
}

if (_frase_aleatoria !=noone) show_message(_frase_aleatoria);

alarm[0] = 5*60;