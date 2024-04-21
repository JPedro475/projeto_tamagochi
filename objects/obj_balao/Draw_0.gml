//Cor e fonte 

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_person);
draw_set_color(#165563);
draw_text(x,y, texto_fala);

//Resetar posição
draw_set_halign(-1);
draw_set_valign(-1);

//Resetar cor
draw_set_color(-1);
draw_set_font(-1);