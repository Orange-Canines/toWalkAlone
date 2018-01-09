// Original Colors //R123 G56 B58 and hex is 7b383a
col = make_color_rgb(143, 76, 78);
alpha -= .01;

if (alpha < .1) 
	instance_destroy();

draw_text_color(x,y,myText,col ,col ,col ,col ,alpha)