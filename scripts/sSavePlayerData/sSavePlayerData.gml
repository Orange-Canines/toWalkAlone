////////////////////
//Delete old file
////////////////////
if file_exists(working_directory + "\Player.txt")
   {
   file_delete(working_directory + "\Player.txt");
   }
   
   
   
////////////////////
// Create New file
////////////////////
file = file_text_open_write(working_directory + "\Player.txt");
file_text_write_string(file, string("Player Data: \n"));
var i;


// Get list of all characters
for (i = 0; i < instance_number(oCharacter); i += 1)
   {
   Char[i] = instance_find(oCharacter,i);
   file_text_write_string(file, "\nid: " + string(Char[i])+ string("\n"));
    file_text_write_string(file, "\nName:  " + string(Char[i].Name)+ string("\n"));
   file_text_write_string(file, "\nHealth:  " + string(Char[i].Health)+ string("\n"));
   file_text_write_string(file, "\nStamina:  " + string(Char[i].Stamina) + string("\n"));
   }

file_text_close(file);