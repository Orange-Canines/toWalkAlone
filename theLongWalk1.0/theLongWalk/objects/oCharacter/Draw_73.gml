/// @description debug drawing
draw_text(x-50,y-300, "Health: "  + string(Health))
draw_text(x-50,y-320, "Stamina: " + string(Stamina))
draw_text(x-50,y-340, "Name "     + string(Name))

//draw_sprite_ext(sHealthBlock,0,x-10,y-400,6,6,0,c_black,1)

if (Health >=1){
	draw_sprite_ext(sHealthBlock,0,x,y-400,1,1,0,c_white,1)
	}
if (Health >=2){
	draw_sprite_ext(sHealthBlock,0,x+30,y-400,1,1,0,c_white,1)
	
	}
	
if (Health >=3){
	draw_sprite_ext(sHealthBlock,0,x+60,y-400,1,1,0,c_white,1)
	}
if (Health >=4){
	draw_sprite_ext(sHealthBlock,0,x+85,y-400,1,1,0,c_white,1)
	}

if (Health >=5) {
	draw_sprite_ext(sHealthBlock,0,x+15,y-415,1,1,0,c_white,1)
	}
if (Health >=6) {
	draw_sprite_ext(sHealthBlock,0,x+45,y-415,1,1,0,c_white,1)
	}
if (Health >=7) {
	draw_sprite_ext(sHealthBlock,0,x+75,y-415,1,1,0,c_white,1)
	}
if (Health >=6) {
	//draw_sprite_ext(sHealthBlock,0,x0,y-430,1,1,0,c_white,1)
	}