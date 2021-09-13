// 
function compareCards(card_1, card_2){
	// find both cards on board
	card_1_spot = findCardOnBoard(card_1);
	card_2_spot = findCardOnBoard(card_2);
	
	// check list for card corresponding to said spot
	findCardInList(card_1_spot);
	findCardInList(card_2_spot);
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
			show_debug_message("this is air");
			sprite_index = card_air_spr;
			break;
		
		case "water":
		show_debug_message("this is water");
			sprite_index = card_water_spr;
			break;
			
		case "earth":
			show_debug_message("this is earth");
			sprite_index = card_earth_spr;
			break;
			
		case "fire":
			show_debug_message("this is fire");
			sprite_index = card_fire_spr;
			break;
			
		case "shadow":
			show_debug_message("this is shadow");
			sprite_index = card_shadow_spr;
			break;
			
		case "spirit":
			show_debug_message("this is spirit");
			sprite_index = card_spirit_spr;
			break;
		}
	}