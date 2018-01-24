/// @description Drawing inspection
if (inspecting && (nextToSelected(oPlayable,1) || tile.contains == global.selected) && 
	ds_queue_empty(global.moveTileQue)) { 
	draw_sprite(sItemIcons,myItem,x,y-distFromTile)	
}