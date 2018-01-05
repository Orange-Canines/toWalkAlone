/// @description Display random ground clutter

// Inherit the parent event
event_inherited();

tile.contains = 0

x = tile.x+(random_range(-10,10)*5)
y = tile.y-(random_range(2,6)*5)

image_index = irandom(2)

xScale = irandom(1)
if xScale = 1
	image_xscale = 1
else image_xscale = -1