if object_exists(oCharacter)
	draw_text(1100,600, "Whos Turn? : "+ string(WhosTurn.Name))
	
	
	
virtual_key_delete(endTurnButton)
endTurnButton = virtual_key_add(1200,700,146,146,ord("N"))
draw_sprite(sEndTurn,0,1200,700)
