function compareCards(card_1, card_2){
	// find both cards on board
	if (card_1 == card_2){
		var instance_lyr = layer_get_id("Instances_1");
		instance_create_layer(0, 0, instance_lyr, Alarm1);
	}
	else{
		var instance_lyr = layer_get_id("Instances_1");
		instance_create_layer(0, 0, instance_lyr, Alarm0);
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
			show_debug_message("dis da hot boi");
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