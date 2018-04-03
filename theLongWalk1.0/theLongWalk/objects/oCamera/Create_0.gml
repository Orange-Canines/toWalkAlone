/// @description Finds the ideal aspect ratio
// sets aspect ratio
ideal_width  = 0
ideal_height = display_get_height()
aspect_ratio = display_get_width()/display_get_height()
// find the apprioriate width to the current height
ideal_width  = round(ideal_height*aspect_ratio)

// a fancy trick to make the width an even number
if(ideal_width & 1)
	ideal_width++

// creates the camera and the corresponding matricies
camera = camera_create()
var vm = matrix_build_lookat(x,y,-10000,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(ideal_width,ideal_height,1,10000)

camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera,pm)

view_camera[0] = camera

// using the width and height set the new surface and window size
surface_resize(application_surface,ideal_width,ideal_height)
window_set_size(ideal_width,ideal_height)

// wait 1 frame before centering
alarm[0] = 1

// Initialize variables
follow = noone

x2 = x
y2 = y

mousexPrev = 0
mouseyPrev = 0