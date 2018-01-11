if (keyboard_check_pressed(vk_left)) {
	charIndex = (dex - 1) % 5
	dex--
}
if (keyboard_check_pressed(vk_right)) {
	charIndex = (dex + 1) % 5
	dex++
}
if (keyboard_check_pressed(vk_enter)) {
	room_goto(rTutorial)
}
