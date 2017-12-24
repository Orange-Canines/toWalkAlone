
//////////////
//Write File
///////////

//var file,stringfile;
stringfile = string("01111111\n11111111\n10000000\n11111111\n00000000");

file = file_text_open_write(working_directory + "\level.txt");
file_text_write_string(file, stringfile);
file_text_close(file);

/////////////////////
//Read From File
////////////////////
LINE = string("");
FullLines = string("");
i = 0;
var file, FullLines;
// Open File
file = file_text_open_read(working_directory + "\level.txt");
Fullines2 = "";
// Read until End of file
num = 0;

//LINE = file_text_readln(file);
while (!file_text_eoln(file)) {

   LINE = file_text_read_string(file);
    FullLines += LINE;
    Width = string_length(LINE);

    for (i = 0; i < Width; i += 1) {
        MapArray[num, i] = string_char_at(LINE, i+1);
        Fullines2 += string(MapArray[num, i])
    }
	LINE = file_text_readln(file);
    num++; // counter for the Height
    file_text_readln(file); // Get next line
}

// Print and Close;
draw_text(50, 50, FullLines)
    draw_text(50, 100, string("Width : ") + string(Width))
        draw_text(50, 150, string("Height : ") + string(num))
            draw_text(50, 250, string("Actual Map : ") + string(Fullines2))
                file_text_close(file);

//////////////////////////////////
//Max_height = 10;
//Max_length =6;
//Max_height += 1;
//Max_length +=1;

Max_height = num;
Max_length = Width;

grid = ds_grid_create(Max_height, Max_length)

    /* Set to 1
for (i=0; i < Max_height; i++){
	for (j=0; j < Max_length ; j++){
	ds_grid_set(grid, i, j, 1);
	}
}
*/

    // Get from
    for (i = 0; i < Max_height; i++)
{
    for (j = 0; j < Max_length; j++) {
        ds_grid_set(grid, i, j, real(MapArray[i, j]));
    }
}

//////////////////////////////////
//Create map
//////////////////////////////////
for (i = 0; i < Max_height; i++) {
    for (j = 0; j < Max_length; j++) {
        if (i % 2 == 0) {

            if (ds_grid_get(grid, i, j) == 1)
                instance_create_depth(j * 384, 1000 - i * 50, 200, oGround1);
            else
                instance_create_depth(j * 384, 1000 - i * 50, 200, oGround2);
        }
        else {

            if (ds_grid_get(grid, i, j) == 1)
                instance_create_depth(j * 384 + 192, 1000 - i * 50, 200, oGround1);

            else
                instance_create_depth(j * 384 + 192, 1000 - i * 50, 200, oGround2);
        }
    }
}


