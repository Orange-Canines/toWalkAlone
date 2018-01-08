/// @description Check if Pressed

if (mouse_check_button_pressed(mb_left) && 
		mouse_x > x - (sprite_width/2)  && 
		mouse_x < x + (sprite_width/2)  &&
		mouse_y < y + sprite_height     && 
		mouse_y > y)
	clicked = true
else clicked = false
