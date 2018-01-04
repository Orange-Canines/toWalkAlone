
file = file_text_open_read(working_directory + "\Player.txt");
Fullines2 = "";
// Read until End of file
num = 0;

//LINE = file_text_readln(file);
while (!file_text_eoln(file)) {

   LINE = file_text_read_string(file);
    FullLines += LINE;
    Width = string_length(LINE);

   // for (i = 0; i < Width; i += 1) {
     //   MapArray[num, i] = string_char_at(LINE, i+1);
      //  Fullines2 += string(MapArray[num, i])
    //}
	LINE = file_text_readln(file);
    num++; // counter for the Height
    file_text_readln(file); // Get next line
}
