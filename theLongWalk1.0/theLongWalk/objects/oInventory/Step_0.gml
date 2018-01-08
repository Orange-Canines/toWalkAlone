/// @description Manage the input

// checks if the Inventory is open or not and changes the target value of the Inventory
if keyboard_check_released(vk_enter){
	if !open {
		imageIndex = 1
		open = true
		targetX = 610
	} else {
		open = false
		targetX = 0
	}
}

// Keyboard checks ... possible revamp???
if keyboard_check_released(ord("1")) and global.group[0] != 0
	global.selected = global.group[0]
if keyboard_check_released(ord("2")) and global.group[1] != 0
	global.selected = global.group[1]
if keyboard_check_released(ord("3")) and global.group[2] != 0
	global.selected = global.group[2]
if keyboard_check_released(ord("4")) and global.group[3] != 0
	global.selected = global.group[3]

// based on the location of the Inventory, swap the arrow =>  <= 
// also change the image index of the inventory so that its only 
// the character select bar showing
if currentX == 610
	arrowIndex = 1
if currentX == 0 && !open {
	arrowIndex = 0 
	imageIndex = 0
}

// cleanly closes the inventory 
if (currentX != 0 && !open && ceil((targetX-currentX)/10) < 1)
	currentX -= 1
// slides to the new position
currentX += ceil((targetX-currentX)/10)
