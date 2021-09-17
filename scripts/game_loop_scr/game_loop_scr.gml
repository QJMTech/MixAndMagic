// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkShuffle(){
	show_debug_message(string(turnCount));
	if (turnCount == turnsToShuffle){
		// shuffle cards
		shuffle();
		// set turn count back to zero
		turnCount = 0;
		
		// decrement turns to shuffle by 1
		if (turnsToShuffle >= 2){
		turnsToShuffle -= 1;
		}
	}
	else{
		// increment turn count by 1
		turnCount += 1
	}
}

function shuffle(){
	// prevent flip while cards being shuffled
	cantFlip2 = true;
	
	instance_create_layer(0, 0, "Game_Objects", Alarm3)
}

function checkWin(){
	if (ds_list_size(attributes) == 0){
		show_debug_message(string("You win bitch"));
	}
}