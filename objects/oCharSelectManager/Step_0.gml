// handles char selecting
if (room == rCharSelect) {
	if (keyboard_check_pressed(vk_left))
		if (currentChar != 0)
			currentChar--
		else currentChar = maxChars-1
	
	if (keyboard_check_pressed(vk_right))
		if (currentChar != maxChars-1)
			currentChar++
		else currentChar = 0

	if (keyboard_check_pressed(vk_enter)) {
		virtual_key_delete(Left)
		virtual_key_delete(Right)
		virtual_key_delete(Enter)
		room_goto_next();
	}
} 