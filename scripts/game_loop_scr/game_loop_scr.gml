// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkShuffle(){
	if (turnCount == turnsToShuffle){
		// shuffle cards
		shuffle();
		// set turn count back to zero
		turnCount = 0;
		// decrement turns to shuffle by 1
		turnsToShuffle -= 1;
	}
	else{
		// increment turn count by 1
		turnCount += 1
	}
}

function shuffle(){
		show_debug_message("shufflin");
}