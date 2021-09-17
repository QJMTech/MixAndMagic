// Script assets have changed for v2.3.0 see
// declare variables
globalvar firstCard, card1, card2, cardAttribute;
firstCard = true;

// flip over cards and save values
function flipCard(){
	cardsDestroyed = false;
	if (firstCard){
		// set card1 to id clicked on
		card1 = id;
		
		// display attribute
		displayAttribute(card1);
		
		
		
		// change firstCard to false
		firstCard = false;
		}
	else{
		// set card2 to id clicked on
		card2 = id;
		
		// display attribute
		displayAttribute(card2);
		
		// check to ensure its not the same card ID
		if (card1 != card2){
		
		// compare this card to first card
		compareCards(card1, card2);
		
		// reset firstCard to true to enable check for next pair
		// increment turn counter
		firstCard = true;
		
		// check for shuffle condition
			// method: checkShuffle
		checkShuffle();
		
			
		// check for win condition
			// method: checkWin
		checkWin();
			// 
			}
		}
	}