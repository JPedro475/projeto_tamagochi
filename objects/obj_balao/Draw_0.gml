if(global.estado_atual != ESTADOS.MORTO and global.estado_atual != ESTADOS.BRINCANDO and global.estado_atual != ESTADOS.COMENDO and global.estado_atual != ESTADOS.BANHO 
and global.alternando == false)
{	
	//Cor e fonte 
	draw_self();
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_person);
	draw_set_color(#165563);
	
	//Quebra de linha
	draw_text_ext(x, y, texto_fala, 35, 450);

	//Resetar posição
	draw_set_halign(-1);
	draw_set_valign(-1);

	//Resetar cor
	draw_set_color(-1);
	draw_set_font(-1);

}