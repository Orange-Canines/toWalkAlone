draw_text(x,y-150,"string")

if (nextTo(oUnicornKnight)){
	draw_sprite(sTalk,0,x,y-200)
	draw_text(x+70,y-160, "hi , I am <" + string (object_get_name(object_index))+ ">" )
}

if (nextTo(oCharacter)){
	draw_sprite(sTalk,0,x+70,y-100)
}

draw_text(x+70,y-120, "My Parent: " + string (object_get_name(object_get_parent(self)))+ ">" )
draw_text(x+70,y-140, "Knights Parent: " + string (object_get_name(object_get_parent(oUnicornKnight)))+ ">" )