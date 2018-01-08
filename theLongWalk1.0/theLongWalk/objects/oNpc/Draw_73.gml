if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
} else {
	draw_sprite(sNotifications,0,x,y-distFromTile-50)
}

/*
// check if you can talk
if (numberOfActions[0] == true){
	draw_sprite(sTalk,0,x+(sign((x+1)-global.selected.x)*xGap),y-distFromTile)
		
	// updates the virtual key position
	virtual_key_delete(Talk_button)
	Talk_button = virtual_key_add( x+(sign((x+1)-global.selected.x)*xGap),y-distFromTile,150,50,ord("T"))
}
		
// Check if you can trade
if (numberOfActions[1] == true){
	draw_sprite(sRecruit,0,x+(sign((x+1)-global.selected.x)*xGap),(y-distFromTile)+heightAndGap)
}
		
// Check if you can recruit	
if (numberOfActions[2] == true){
	draw_sprite(sShop,0,x+(sign((x+1)-global.selected.x)*xGap),(y-distFromTile)+heightAndGap*2)
}
*/	
/*
// Draw the talking
if (Talking== true)
	draw_text(x+(sign((x+1)-global.selected.x)*xGap),y-distFromTile,Talk[Talk_No])
	
// Old debug
//draw_text(x+70,y-120, "My Parent: " + string (object_get_name(object_get_parent(self)))+ ">" )
//draw_text(x+70,y-140, "Knights Parent: " + string (object_get_name(object_get_parent(oUnicornKnight)))+ ">" )