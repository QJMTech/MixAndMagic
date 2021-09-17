// game initialization script

// declare variables and initialize
	
	// misc
	globalvar randomInt;
	globalvar cardsDestroyed;
	cardsDestroyed = false;
	
	// vars for deck and attributes
	globalvar deck;
	deck = ds_list_create();
	
	globalvar attributes;
	attributes = ds_list_create();
	
	// vars for board
	globalvar board;
	var xx, yy, i;
	
	// initialize instance
	globalvar instance_lyr; 
	instance_lyr = layer_get_id("Instances_1");
	
	// variable for turn count and shuffle count
	globalvar turnCount;
	turnCount = 0;
	globalvar turnsToShuffle;
	turnsToShuffle = 5;
	
	cantFlip2 = false;
	
	
// create attribute list to assign to card objs
ds_list_add(attributes, "air", "air", 
				  "earth", "earth", 
				  "fire", "fire", 
				  "water", "water", 
				  "spirit", "spirit", 
				  "shadow", "shadow");


randomise();
randomInt = irandom(50);
// randomize deck order
for (i = 0; i < randomInt; i++){
	// shuffle list of object instances
	ds_list_shuffle(attributes);
}


// initial coordinate offset
xx = 10;
yy = 350;

// create cards on board
for (i = 0; i < 12; i++){
	if (i % 4 == 0 && i != 0){
		yy += sprite_get_height(card_back_spr);	
		xx = 10;
	}
	
	// create cards and add to deck
	ds_list_add(deck, instance_create_layer(xx, yy, instance_lyr, card_obj));
	
	// assign attribute to card using attribute list
	ds_list_find_value(deck, i).attribute = ds_list_find_value(attributes, i);
		
	// offset new card by size of old card plus distance in between cards
	xx += sprite_get_width(card_back_spr) - 10;
}


