// Create Arguements to create Map
Max_height = 10;
Max_length =6;
Max_height += 1;
Max_length +=1;
//////////////////////////////////
///Create a giant Grid 
//////////////////////////////////
grid= ds_grid_create(Max_height, Max_length) 

//////////////////////////////////
/// Fill With Void.
/////////////////////////////////
//ds_grid_set_region(grid,0,0,Max_height, Max_length,1);

//////////////////////////////////
// Create An Array to store Tiles
//////////////////////////////////

for (i=0; i < Max_height; i++){
	for (j=0; j < Max_length ; j++){
	ds_grid_set(grid, i, j, 1);
	}
}

/*
for (i=1; i < Max_height; i++){
	for (j=1; j < Max_length ; j++){
		MapArray[i, j] = oGround1;
	}
}


repeat (ds_grid_width(grid))
   {
   repeat (ds_grid_height(grid))
      {
      ds_grid_set(grid, i, j, 1);
      j += 1;
      }
   j = 0;
   i += 1;
}

*/

//////////////////////////////////
// Random Tiles
//////////////////////////////////
//MapArray[2, 2] = oGround2;

 // ds_grid_set(grid, 1, 1, 2);
 

//////////////////////////////////
//Create map
//////////////////////////////////
for (i=1; i < Max_height; i++){
	for (j=1; j < Max_length ; j++){
		if (i%2 ==0){
			if (ds_grid_get(grid, i, j) ==1 )
				instance_create_depth(j*384,1000-i*50,200,oGround1);
			else 
				instance_create_depth(j*384,1000-i*50,200,oGround2);
			}
		
		else{
			if (ds_grid_get(grid, i, j) ==1 )
				instance_create_depth(j*384 +192,1000-i*50,200,oGround1);
				
			else instance_create_depth(j*384,1000-i*50,200,oGround2);
			}
			
		}
}