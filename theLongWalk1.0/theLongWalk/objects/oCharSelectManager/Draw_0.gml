/// @description Draws character and stats
// draw the characters
draw_sprite(sCharacters, charIndex, platform.x, platform.y)

// draw the character names
draw_set_font(OswaldBigTurnCounter)
draw_text(platform.x-((charNameSize[charIndex]*pixelScale)/2),platform.y-375,charNames[charIndex])

// draw the stat bar and the currently selected characters stats
draw_sprite(sStatBar,0,platform.x+105,platform.y-200)
draw_set_font(Oswald20)
for (var i = 0; i < 7; i++) {
	draw_text(platform.x+154,(platform.y-208)+(i*34),currentCharStats[i])	
}