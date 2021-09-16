// Script assets have changed for v2.3.0 see
// declare variables
globalvar firstCard, card1, card2, card1ID, card2ID;
firstCard = true;

var position, cardIndex, i, j;
position = 0;
cardIndex = 0;
var card1PositionOnBoard, card2PositionOnBoard;

var currentOffset;
currentOffset = 6;



// flip over cards and save values
function flipCard(){

	if (firstCard){
		// set card2 to id clicked on
		card1 = id;
		
		// find and display card on board
		card1PositionOnBoard = id - 100006;
		
		card1ID = findCardInList(card1PositionOnBoard);
		
		// change firstCard to false
		firstCard = false;
		}
	else{
		// set card2 to id clicked on
		card2 = id;
		
		// check to ensure its not the same card ID
		if (card1 != card2){
		
		// find and display card on board
		card2PositionOnBoard = id - 100006;
		show_debug_message(string(card2PositionOnBoard));
		
		card2ID = findCardInList(card2PositionOnBoard);
		
		// compare this card to first card
		compareCards(card1ID, card2ID);
		
		// reset firstCard to true to enable check for next pair
		// increment turn counter
		firstCard = true;
		
		// check for shuffle condition
		
			// method: checkShuffle
			
			
		// check for win condition
			
			// method: checkWin
			
			// 
			}
		}
	}
