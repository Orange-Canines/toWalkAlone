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
if global.group[1] != noone
	draw_sprite(sIcon,global.group[1].icon,12+currentX,411)
if global.group[2] != noone
	draw_sprite(sIcon,global.group[2].icon,12+currentX,567)
if global.group[3] != noone
	draw_sprite(sIcon,global.group[3].icon,12+currentX,723)
	
// Draw Stats ... possible revamp???
if 	(open) {
	draw_set_font(Oswald20)
	draw_text((12-610)+currentX,36," THE " + string_upper(string(Last_Sel_hero.Class)))
	draw_text((510-610)+currentX,36,"$ " + string(Last_Sel_hero.currency))
	draw_set_font(Oswald)
	draw_text((115-610)+currentX,117, string(Last_Sel_hero.Vit))
	draw_text((115-610)+currentX,152, string(Last_Sel_hero.End))
	draw_text((115-610)+currentX,187, string(Last_Sel_hero.Str))
	draw_text((115-610)+currentX,222, string(Last_Sel_hero.Dex))
	draw_text((115-610)+currentX,257, string(Last_Sel_hero.Wis))
	draw_text((115-610)+currentX,292, string(Last_Sel_hero.Int))
	draw_text((115-610)+currentX,327, string(Last_Sel_hero.Lck))
	
	// Draw Equipment LWeapon   RWeapon		Talisman   Armor    
	draw_text((115-610)+currentX,527,"Equipment- L Weapon "+ string(Last_Sel_hero.Equipment[0]))
	//if (Last_Sel_hero.Equipment[0] == "RustySword")
		//draw_sprite(sItemIcons,0,(30-610)+currentX,605)
	//if (Last_Sel_hero.Equipment[0] != noone)
		//draw_sprite(sItemIcons,Last_Sel_hero.Equipment[0],(30-610)+currentX,605)
		
	for (var i = 0; i < 4; i++)
		if (Last_Sel_hero.Equipment[i] != noone)
			draw_sprite(sItemIcons,Last_Sel_hero.Equipment[i],(30-610)+currentX+(i*seperation),605)		
			
	draw_text((115-610)+currentX,627,"Equipment- R Weapon "+ string(Last_Sel_hero.Equipment[1]))
	draw_text((115-610)+currentX,727,"Equipment- Tailismen"+ string(Last_Sel_hero.Equipment[2]))
	draw_text((115-610)+currentX,827,"Equipment- Armor    "+ string(Last_Sel_hero.Equipment[3]))
}

