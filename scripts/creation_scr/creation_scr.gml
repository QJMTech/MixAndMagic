// game initialization script

// declare variables

	// width x height of board
globalvar boardWidth, boardHeight;
boardWidth = 4;
boardHeight = 3;

	// initialize instance layer in code
var instance_lyr = layer_get_id("Instances_1");
	
// place cards on board
globalvar board;
var xx, yy, i, j;

xx = 0;
// outer loop along width
for (i = 0; i < boardWidth; i++){
	// inner loop along height
	yy = 300;
	for (j = 0; j < boardHeight; j++) {
		// create card
		board[i, j] = instance_create_layer(xx, yy, instance_lyr, card_obj);
		
		// offset new card by size of old card plus distance in between cards
		yy += sprite_get_height(card_back);
		}
		
		// offset new card by width of old card plus distance in between cards
		xx += sprite_get_width(card_back);
	}