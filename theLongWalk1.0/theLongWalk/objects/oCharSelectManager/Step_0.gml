if (keyboard_check_pressed(vk_left) || 
		(x < mouse_x && position_meeting(mouse_x,mouse_y,self) && 
		mouse_check_button_pressed(mb_left))) {
	charIndex = (dex - 1) % 5
	dex--
}
if (keyboard_check_pressed(vk_right) || 
		(x > mouse_x && position_meeting(mouse_x,mouse_y,self) && 
		mouse_check_button_pressed(mb_left))) {
	charIndex = (dex + 1) % 5
	dex++
}
	
if (keyboard_check_pressed(vk_enter) || acceptButton.clicked) {
	room_goto(rTutorial)
}

if (x < mouse_x && position_meeting(mouse_x,mouse_y,self)) 
	image_index = 1
else if (x > mouse_x && position_meeting(mouse_x,mouse_y,self)) 
	image_index = 2
else 
	image_index = 0