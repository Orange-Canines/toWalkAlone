/// @description Handle buttom clicks/hovers

// change charindex to cycle through the number of characters
if (keyboard_check_pressed(vk_left) || leftArrow.clicked) {
	charIndex = (dex - 1) % 5
	dex--
}
if (keyboard_check_pressed(vk_right) || rightArrow.clicked) {
	charIndex = (dex + 1) % 5
	dex++
}

// change the room once a character has been selected
if (keyboard_check_pressed(vk_enter) || acceptButton.clicked) {
	room_goto(rTutorial)
}

// set the hover action for the left and right arrows
if (leftArrow.hover) 
	leftArrow.image_index = 1
else
	leftArrow.image_index = 0
	
if (rightArrow.hover) 
	rightArrow.image_index = 1
else 
	rightArrow.image_index = 0
	
// set the hover action for the accept button
if (acceptButton.hover)
	acceptButton.sprite_index = sChatButtonsHighlight
else 
	acceptButton.sprite_index = sChatButtons

// set character stats
switch(charIndex) {
	case 0: // stats for adventurer
		currentCharStats = array(1,2,3,4,5,6,7)
	break
	case 1:
		currentCharStats = array(2,2,1,3,5,3,9)
	break
	case 2:
		currentCharStats = array(1,2,3,4,5,6,7)
	break
	case 3:
		currentCharStats = array(1,2,3,4,5,6,7)
	break
	case 4:
		currentCharStats = array(1,2,3,4,5,6,7)
	break
}