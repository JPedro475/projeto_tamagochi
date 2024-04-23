if (click >= 5 and click <10)
{
	image_index = 1;
}
else if (click >=10 and click < 15)
{
	image_index = 2;
}
else if (click >= 15 and click <20)
{
	image_index = 3;
}
else if (click >= 20 and click < 25)
{
	image_index = 4;
}
else if (click >= 25) 
{
	global.alternando = true;
	alarm[0] = 60;
	click = 0;
}
else 
{
	image_index = 0;
}