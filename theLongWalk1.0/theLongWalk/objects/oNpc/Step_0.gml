event_inherited();
if (nextToSelected(oCharacter,1) and ds_queue_empty(global.moveTileQue)) {
	if keyboard_check_released(ord("T")){
		Talking=true;
		Talk_No +=1;
		if (Talk_No > 4)
			Talk_No =0;
		}
}
