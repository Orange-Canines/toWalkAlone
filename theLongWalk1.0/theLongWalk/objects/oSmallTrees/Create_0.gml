/// @description Display random trees

// Inherit the parent event
event_inherited();
tile.contains = 0
image_index = irandom(2)
for(i = 0; i < 3; i++) {
	if (tile.containsDecor[i] == noone) {
		tile.containsDecor[i] = self.id
		if (i == 0) {
			x = tile.x+choose(-10,0,10)
			break
		} else if (i == 1) {
			x = tile.x+choose(-50,50)
			if (image_index == tile.containsDecor[0].image_index)
				image_index = (image_index + 1) % 3
			break
		} else if (i == 2) {
			x = tile.x+choose(-80,80)
			repeat(3) {
				if(image_index == tile.containsDecor[0].image_index ||
				   image_index == tile.containsDecor[1].image_index)
					image_index = (image_index + 1) % 3
			}
			break
		}
	}
}
y = tile.y-irandom_range(25,40)
image_xscale = choose(-1,1)
