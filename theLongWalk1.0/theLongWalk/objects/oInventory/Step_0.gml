/// @description Manage the input

// checks if the Inventory is open or not and changes the target value of the Inventory
if keyboard_check_released(vk_enter){
	if !open {
		open = true
		targetX = 610
	} else {
		open = false
		targetX = 0
	}
}

if keyboard_check_released(ord("1")) and global.group[0] != 0
	global.selected = global.group[0]
if keyboard_check_released(ord("2")) and global.group[1] != 0
	global.selected = global.group[1]
if keyboard_check_released(ord("3")) and global.group[2] != 0
	global.selected = global.group[2]
if keyboard_check_released(ord("4")) and global.group[3] != 0
	global.selected = global.group[3]

// based on the location of the Inventory, swap the arrow =>  <=
if currentX >= 600
	arrowIndex = 1
if currentX <= 10
	arrowIndex = 0

// slides to the new position
currentX += ceil((targetX-currentX)/10)