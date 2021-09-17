// delete all cards
// destroy card instances on board
instance_destroy(card_obj);
		
// clear deck list
ds_list_clear(deck);
		
// set cardsDestroyed to true so alarms dont run on
// non existing cards
cardsDestroyed = true;
		
// shuffle remaining attributes in list
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
for (i = 0; i < ds_list_size(attributes); i++){
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

// allow cards to be clicked again
cantFlip2 = false;
		