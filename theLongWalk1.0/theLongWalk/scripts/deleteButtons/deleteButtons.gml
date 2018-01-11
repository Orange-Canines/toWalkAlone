if (ds_exists(buttonList, ds_type_list)) {
	for(i = 0; i < ds_list_size(buttonList); i++) {	
		instance_destroy(ds_list_find_value(buttonList, i))
	}
	// clear the list and reset variables
	ds_list_clear(buttonList)
}
buttonNumber = 0
buttonIndex  = 0