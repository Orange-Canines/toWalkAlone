if (room == rCharSelect) {
	// draw selected palyers stats
	draw_text(50,50,"Name: " + string(currentChar))
	draw_text(50,100,"Class: "  + string(charClass[currentChar]))
	draw_text(50,150,"Health: " + string(charHP[currentChar]))

	// draws each icon over the virtual key
	draw_sprite(sArrow,0,window_get_width()/1.8,window_get_height()/1.5)
	draw_sprite_ext(sArrow,0,window_get_width()/2.2,window_get_height()/1.5,-1,1,0,-1,1)
	draw_sprite(sEnter,0,window_get_width()/2,window_get_height()/1.2)

	// draws the selected character
	draw_sprite(charImages[currentChar],0,window_get_width()/2,window_get_height()/1.6)	
}