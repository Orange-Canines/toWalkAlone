/// @description Insert description here
// You can write your code in this editor

if (accepted && controlling) {
	sprite_index = sInvis
	image_index  = 0
	draw_sprite(sItemDrop,rarity,window_mouse_get_x(),window_mouse_get_y()+10)	
} else {
	sprite_index = sItemDrop	
	image_index = rarity
}