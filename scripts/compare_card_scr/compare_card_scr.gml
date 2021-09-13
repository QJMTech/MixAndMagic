// timer variables
var counter;

function compareCards(card_1, card_2){
	// find both cards on board
	if (card_1 == card_2){
		return true;
	}
	else{
		return false;
	}
}

function findCardOnBoard(card){
	// declare variables
	var cardPosition, tempPosition, i, j;
	cardPosition = 0;
	tempPosition = 0;
	
	for (i = 0; i < boardWidth; i++;){
		for (j = 0; j < boardHeight; j++){
			if (board[i,j] == card){
				cardPosition = tempPosition;
				return tempPosition;
			}
		tempPosition++;
		}
	}
}

function findCardInList(card_spot){
	// declare variables
	var card;
	card = ds_list_find_value(deck, card_spot);
	
	switch (card){
		case "air":
			sprite_index = card_air_spr;
			return "air";
			break;
		
		case "water":
			sprite_index = card_water_spr;
			return "water";
			break;
			
		case "earth":
			sprite_index = card_earth_spr;
			return "earth";
			break;
			
		case "fire":
			sprite_index = card_fire_spr;
			return "fire";
			break;
			
		case "shadow":
			sprite_index = card_shadow_spr;
			return "shadow";
			break;
			
		case "spirit":
			sprite_index = card_spirit_spr;
			return "spirit";
			break;
		}
	}