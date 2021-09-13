// Script assets have changed for v2.3.0 see
// declare variables
globalvar firstCard, card1, card2;
firstCard = true;

var position, cardIndex, i, j;
position = 0;
cardIndex = 0;

// flip over cards and save values
function flipCard(){
	if (firstCard){
		// set card2 to id clicked on
		card1 = id;
		
		// change firstCard to false
		firstCard = false;
	}
	else{
		show_debug_message("second card flipped");
		// set card2 to id clicked on
		card2 = id;
		// reset firstCard to true to enable check for next pair
		firstCard = true;
		compareCards(card1, card2);
	}
}