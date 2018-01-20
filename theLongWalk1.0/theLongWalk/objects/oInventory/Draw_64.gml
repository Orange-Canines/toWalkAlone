if (font_exists(Oswald))
	draw_set_font(Oswald)

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
else 
	draw_sprite(sPartyPlus,0,17+currentX,255)
	
if global.group[1] != noone
	draw_sprite(sIcon,global.group[1].icon,12+currentX,411)
else 
	draw_sprite(sPartyPlus,0,17+currentX,420)
	
if global.group[2] != noone
	draw_sprite(sIcon,global.group[2].icon,12+currentX,567)
else 
	draw_sprite(sPartyPlus,0,17+currentX,578)
	
if global.group[3] != noone
	draw_sprite(sIcon,global.group[3].icon,12+currentX,723)
else 
	draw_sprite(sPartyPlus,0,17+currentX,736)
	
// Draw Stats ... possible revamp???
if 	(open) {
	draw_set_font(Oswald20)
	draw_text((12-610)+currentX,36," THE " + string_upper(string(Last_Sel_hero.Class)))
	draw_text((510-610)+currentX,36,"$ " + string(Last_Sel_hero.currency))
	draw_set_font(Oswald)
	
	for (var i = 0; i < 7; i++)
		for (var j = 0; j < Last_Sel_hero.maxValues[i]; j++)
			if (Last_Sel_hero.currentStats[i] >= j)
				draw_sprite(sLevelUpColors,1,currentX-495+(j*24),122+(i*34))
			else
				draw_sprite(sLevelUpColors,0,currentX-495+(j*24),122+(i*34))

	for (var i = 0; i < 4; i++)
		if (Last_Sel_hero.Equipment[i] != noone)
			draw_sprite(sItemIcons,Last_Sel_hero.Equipment[i],(30-610)+currentX+(i*seperation),605)		
	
	// inventory icon
	draw_sprite(sInvIcon,1,(444-610)+currentX,910)
}

