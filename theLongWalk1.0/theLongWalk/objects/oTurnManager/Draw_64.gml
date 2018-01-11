/// @description Draw the end turn button
draw_set_font(OswaldBigTurnCounter)
draw_text(1100,100,"Turn: "+ string(turnCounter));

virtual_key_delete(endTurnButton)
endTurnButton = virtual_key_add((camera.ideal_width/2)-97,camera.ideal_height-200,194,84,ord("N"))
draw_sprite(sEndTurn,0,(camera.ideal_width/2)-97,camera.ideal_height-200)
