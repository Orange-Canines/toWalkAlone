/// @description Check if Pressed

if (mouse_check_button_released(mb_left) && position_meeting(mouse_x,mouse_y,self))
	clicked = true
else clicked = false
