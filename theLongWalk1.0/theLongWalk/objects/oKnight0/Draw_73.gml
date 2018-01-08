if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
	if talking
		draw_text(x,y-300,Talk[0])
} else {
	draw_sprite(sNotifications,0,x,y-distFromTile-50)
}
