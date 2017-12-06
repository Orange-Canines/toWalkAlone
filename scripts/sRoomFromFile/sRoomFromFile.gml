//////////////
//Write File
///////////

//var file,stringfile;
stringfile = string ("1010101\n1010111\n1011111");

file = file_text_open_write(working_directory + "\level.txt");
file_text_write_string(file,stringfile  );
file_text_close(file);




/////////////////////
//Read From File
////////////////////
LINE = string(""); 
FullLines = string(""); 
var i, file,FullLines;
// Open File
file = file_text_open_read(working_directory + "\level.txt");

// Read until End of file
   var num = 0; while (!file_text_eoln(file))
   {
	
	  LINE = file_text_read_string(file) + " ";
	  FullLines += LINE;
	  Width = string_length(LINE);
	  file_text_readln(file); // Get next line
	 // for (i=1[ i +=1)
	 // MapArray[num]
	  num ++;  // counter for the Height
   }
// Print and Close; 
draw_text(50,50,FullLines )
draw_text(50,100,string ("Width : ")+ string (Width)  )
draw_text(50,150,string ("Height : ")+ string (num)  )
file_text_close(file);