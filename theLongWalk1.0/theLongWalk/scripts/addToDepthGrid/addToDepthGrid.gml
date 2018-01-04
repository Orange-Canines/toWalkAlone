with(oDraw) {
	if(!ds_exists(depthGrid, ds_type_grid)) {
		depthGrid = ds_grid_create(2,1)	
		depthGrid[# 0, 0] = other
		depthGrid[# 1, 0] = other.y
	} else {
		var gridHeight = ds_grid_height(depthGrid)
		ds_grid_resize(depthGrid, 2, gridHeight + 1)
		depthGrid[# 0, gridHeight] = other	
		depthGrid[# 1, gridHeight] = other.y
	}
}