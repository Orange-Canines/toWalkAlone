/// @description Manage the input

// checks if the Inventory is open or not and changes the target value of the Inventory
if keyboard_check_pressed(vk_enter){
	if !open {
		open = true
		targetX = 610
	} else {
		open = false
		targetX = 0
	}
}

// based on the location of the Inventory, swap the arrow =>  <=
if currentX >= 600
	arrowIndex = 1
if currentX <= 10
	arrowIndex = 0

// slides to the new position
currentX += (targetX-currentX)/10