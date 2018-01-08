if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
} else {
	draw_sprite(sNotifications,0,x,y-distFromTile-50)
}

/*
// Draw the talking
if (Talking== true)
	draw_text(x+(sign((x+1)-global.selected.x)*xGap),y-distFromTile,Talk[Talk_No])
	
// Old debug
//draw_text(x+70,y-120, "My Parent: " + string (object_get_name(object_get_parent(self)))+ ">" )
//draw_text(x+70,y-140, "Knights Parent: " + string (object_get_name(object_get_parent(oUnicornKnight)))+ ">" )