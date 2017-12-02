// Create Arguements to create Map
Max_width = 40;
Max_length =40;

//////////////////////////////////
///Create a giant Grid 
//////////////////////////////////
grid= ds_grid_create(Max_width, Max_length) 

//////////////////////////////////
/// Fill With Void.
//////////////////////////////////
ds_grid_set_region(grid,0,0,Max_width, Max_length,1);

//////////////////////////////////
// Create An Array to store Tiles
//////////////////////////////////
for (i=1; i < Max_length ; i++){
	for (j=1; j < Max_width ; j++){
		MapArray[i, j] = oGround1;
	}
}


repeat (ds_grid_height(grid))
   {
   repeat (ds_grid_width(grid))
      {
      ds_grid_set(grid, i, j, 1);
      j += 1;
      }
   j = 0;
   i += 1;
}


//////////////////////////////////
// Random Tiles
//////////////////////////////////
MapArray[2, 2] = oGround2;
MapArray[4, 2] = oGround2;
MapArray[2, 4] = oGround2;
MapArray[4, 4] = oGround2;
MapArray[6, 6] = oGround2;
MapArray[4, 2] = oGround2;
MapArray[6, 4] = oGround2;
MapArray[6, 2] = oGround2;

//////////////////////////////////
//Create map
//////////////////////////////////
for (i=1; i < Max_length; i++){
	for (j=1; j < Max_width ; j++){
		if (i%2 ==0){
			if (ds_grid_get(grid, i, j) ==1 )
				instance_create_depth(j*384,1000-i*50,200,oGround1);
			
			}
			
		else{
			if (ds_grid_get(grid, i, j) ==1 )
				instance_create_depth(j*384 +192,1000-i*50,200,oGround1);
			}
		}
}