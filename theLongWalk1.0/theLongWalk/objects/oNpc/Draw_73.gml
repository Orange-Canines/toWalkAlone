draw_text(x,y-150,"string")

if (nextTo(oCharacter,2))
	draw_sprite(sTalk,0,x+70,y-100)

draw_text(x+70,y-120, "My Parent: " + string (object_get_name(object_get_parent(self)))+ ">" )
draw_text(x+70,y-140, "Knights Parent: " + string (object_get_name(object_get_parent(oUnicornKnight)))+ ">" )