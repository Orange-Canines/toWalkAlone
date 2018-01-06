//draw_text(x,y-150,"string")
if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
	draw_sprite(sTalk,0,x+(sign((x+1)-global.selected.x)*xGap),y-distFromTile)
	draw_sprite(sRecruit,0,x+(sign((x+1)-global.selected.x)*xGap),(y-distFromTile)+heightAndGap)
	draw_sprite(sShop,0,x+(sign((x+1)-global.selected.x)*xGap),(y-distFromTile)+heightAndGap*2)

} else {
	draw_sprite(sNotifications,0,x,y-distFromTile-50)
	
}
//draw_text(x+70,y-120, "My Parent: " + string (object_get_name(object_get_parent(self)))+ ">" )
//draw_text(x+70,y-140, "Knights Parent: " + string (object_get_name(object_get_parent(oUnicornKnight)))+ ">" )