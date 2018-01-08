/// @description Draw the Inventory
draw_sprite(sInventory, imageIndex, currentX, 10)
draw_sprite(sArrow,arrowIndex, 38+currentX,126)

// updates the virtual key position
virtual_key_delete(arrow)
arrow = virtual_key_add(38+currentX,126,88,88,vk_enter)

virtual_key_delete(position[0])
position[0] = virtual_key_add(12+currentX,255,146,146,ord("1"))

virtual_key_delete(position[1])
position[1] = virtual_key_add(12+currentX,411,146,146,ord("2"))

virtual_key_delete(position[2])
position[2] = virtual_key_add(12+currentX,567,146,146,ord("3"))

virtual_key_delete(position[3])
position[3] = virtual_key_add(12+currentX,723,146,146,ord("4"))

virtual_key_delete(position[4])
position[4] = virtual_key_add(12+currentX,879,146,146,ord("5"))

// Draw the icons based on who is in the party ... possible revamp???
if global.group[0] != noone
	draw_sprite(sIcon,global.group[0].icon,12+currentX,255)
if global.group[1] != noone
	draw_sprite(sIcon,global.group[1].icon,12+currentX,411)
if global.group[2] != noone
	draw_sprite(sIcon,global.group[2].icon,12+currentX,567)
if global.group[3] != noone
	draw_sprite(sIcon,global.group[3].icon,12+currentX,723)
	
// Draw Stats ... possible revamp???
if 	(open != false){
	draw_text(30,50, "Name: " + string(Last_Sel_hero.Name))
	draw_text(120,130, string(Last_Sel_hero.Vit))
	draw_text(120,165, string(Last_Sel_hero.End))
	draw_text(120,195, string(Last_Sel_hero.Str))
	draw_text(120,230, string(Last_Sel_hero.Dex))
	draw_text(120,265, string(Last_Sel_hero.Wis))
	draw_text(120,300, string(Last_Sel_hero.Int))
	draw_text(120,335, string(Last_Sel_hero.Lck))
}