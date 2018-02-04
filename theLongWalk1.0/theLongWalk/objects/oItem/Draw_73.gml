/// @description Drawing inspection
if (inspecting && (nextToSelected(oPlayable,1) || tile.contains == global.selected) && 
	ds_queue_empty(global.moveTileQue)) { 
	draw_set_color(c_black)
	draw_rectangle(x,y-distFromTile-35, x+150,y-distFromTile -250,false)
	draw_sprite(sItemIcons,myItem,x,y-distFromTile - 250)	
}