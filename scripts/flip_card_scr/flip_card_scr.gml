// Script assets have changed for v2.3.0 see
// declare variables
globalvar firstCard, card1, card2, card1ID, card2ID;
firstCard = true;

var position, cardIndex, i, j;
position = 0;
cardIndex = 0;
var card1PositionOnBoard, card2PositionOnBoard;

// flip over cards and save values
function flipCard(){
	if (firstCard){
		// set card2 to id clicked on
		card1 = id;
		
		// find and display card on board
		card1PositionOnBoard = findCardOnBoard(card1);
		
		card1ID = findCardInList(card1PositionOnBoard);
		
		// change firstCard to false
		firstCard = false;
	}
	else{
		// set card2 to id clicked on
		card2 = id;
		
		// find and display card on board
		card2PositionOnBoard = findCardOnBoard(card2);
		
		card2ID = findCardInList(card2PositionOnBoard);
		
		// compare this card to first card
		if (compareCards(card1ID, card2ID)){
			
		}
		else{
			card1.sprite_index = card_back_spr;
			card2.sprite_index = card_back_spr;
		}
		
		// reset firstCard to true to enable check for next pair
		firstCard = true;
	}
}