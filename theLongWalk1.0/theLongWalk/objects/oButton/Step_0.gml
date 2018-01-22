/// @description Check if pressed or hovered

xx = window_mouse_get_x()
yy = window_mouse_get_y()

if (mouse_check_button_pressed(mb_left) && 
    (position_meeting(mouse_x,mouse_y,self) || guiButton && position_meeting(xx,yy, self)))
	clicked = true
else clicked = false

// possible check for pressed !released
if (position_meeting(mouse_x,mouse_y,self) || guiButton && position_meeting(xx,yy, self))
	hover = true
else 
	hover = false