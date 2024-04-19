if (global.alternando == true) 
{
	if(estado_fade == 0)
	{
		timer++;
		if (timer >= duracao)
		{
			estado_fade = 1;
		}
	}
	else if (estado_fade == 1)
	{
		timer--;
		if (timer <= 0 )
		{
			estado_fade = 0;
			global.alternando = false;
		}
	}
	alpha = timer / duracao;
}