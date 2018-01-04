/// @description Follow the player smoothly

// set the follow to the selected character
if (room != rCharSelect)
	follow = global.selected

// if there is something set as follow get the x and y values
if (follow != 0 and follow != noone) {
	x2 = follow.x
	y2 = follow.y
} else { // if not when you click the left mouse button use the mouse position to move
	if (mouse_check_button(mb_left)){
		x2 -= mouse_x - mousexPrev
		y2 -= mouse_y - mouseyPrev
	}	
}

// stops the camera movement when the difference/10 is less than 1 
// continues movement if its greater than 1
if abs((x2-x)/10) >= 1
	x +=(x2-x)/10
if abs((y2-y)/10) >= 1
	y +=(y2-y)/10

// not sure but cameras and matrix stuff
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera, vm)

// gets the previous mouse positions each step
mousexPrev = mouse_x
mouseyPrev = mouse_y