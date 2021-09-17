// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkShuffle(){
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
	
	changeTurnCounter();
}

function changeTurnCounter(){
		switch (turnsToShuffle - turnCount){
			case 5:
				number_obj.sprite_index = number_6_spr;
				break;
				
			case 4:
				number_obj.sprite_index = number_5_spr;
				break;
				
			case 3:
				number_obj.sprite_index = number_4_spr;
				break;
				
			case 2:
				number_obj.sprite_index = number_3_spr;
				break;
				
			case 1:
				number_obj.sprite_index = number_2_spr;
				break;
				
			case 0:
				number_obj.sprite_index = number_1_spr;
				break;
		}
	}
	
function shuffle(){
	// prevent flip while cards being shuffled
	cantFlip2 = true;
	
	// play shuffle sound
	audio_play_sound(shuffle_sound, 3, false);
	
	// create alarm with shuffle card
	instance_create_layer(0, 0, "Game_Objects", Alarm3)
}

function checkWin(){
	if (ds_list_size(attributes) == 0){
		instance_create_layer(0, 0, "Game_Objects", Alarm4);
	}
}