/// @description Using the depth grid for 3D
if(ds_exists(depthGrid,ds_type_grid)) {
	ds_grid_sort(depthGrid, 1, true)
	for(var yy = 0; yy < ds_grid_height(depthGrid); yy++) {
		var instanceID = depthGrid[# 0, yy]
		with(instanceID) {
			draw_self()
		}
	}
	ds_grid_destroy(depthGrid)
}

