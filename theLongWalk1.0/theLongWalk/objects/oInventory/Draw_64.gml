if (font_exists(Oswald))
	draw_set_font(Oswald)

/// @description Draw the Inventory
draw_sprite(sInventory, imageIndex, currentX, 10)


// Draw Stats ... possible revamp???
if 	(open) {
	draw_set_font(Oswald20)
	//draw_text((12-610)+currentX,36," THE " + string_upper(string(lastSelectedChar.Class)))
	draw_text((510-610)+currentX,36,"$ " + string(lastSelectedChar.currency))
	draw_set_font(Oswald)
	
	// draws stats need button per row
	for (var i = 0; i < 7; i++)
		for (var j = 0; j < lastSelectedChar.maxValues[i]; j++)
			if (lastSelectedChar.currentStats[i] >= j)
				draw_sprite(sLevelUpColors,1,currentX-495+(j*24),122+(i*34))
			else
				draw_sprite(sLevelUpColors,0,currentX-495+(j*24),122+(i*34))
	if (imageIndex = 3) {
		draw_sprite(sInvSpace,0,-398+currentX,479)
		draw_sprite(sInvSpace,0,-580+currentX,607)
		draw_sprite(sInvSpace,0,-216+currentX,607)
	}
}

