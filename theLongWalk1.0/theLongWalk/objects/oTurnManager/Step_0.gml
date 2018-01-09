// Add Stamina Back
if keyboard_check_released(ord("N")) {
	//Get list of all characters
		for (i = 0; i < instance_number(oCharacter); i += 1)
		   {
			     Char[i] = instance_find(oCharacter,i);
				 Char[i].Stamina	 += 2;
		   }
	}
