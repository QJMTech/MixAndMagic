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

// ??Maybe move all these to supporting script? 
function setCorrectImage(card_type)
{
	switch (card_type){
		case "air":
			air_element_obj.sprite_index = air_merged_spr;
			break;
		
		case "water":
			water_element_obj.sprite_index = water_merged_spr;
			break;
			
		case "earth":
			earth_element_obj.sprite_index = earth_merged_spr;
			break;
			
		case "fire":
			fire_element_obj.sprite_index = fire_merged_spr;
			break;
			
		case "shadow":
			shadow_element_obj.sprite_index = shadow_merged_spr;
			break;
			
		case "spirit":
			spirit_element_obj.sprite_index = spirit_merged_spr;
			break;
		}
}

function spawnElement(card_type)
{
	switch (card_type){
		case "air":
			instance_create_layer(10, 70, "Game_Objects", air_element_obj);
			instance_create_layer(0, 0, "Game_Objects", Alarm2);
			break;
		
		case "water":
			instance_create_layer(310, 70, "Game_Objects", water_element_obj);
			instance_create_layer(0, 0, "Game_Objects", Alarm2);
			break;
			
		case "earth":
			instance_create_layer(220, 70, "Game_Objects", earth_element_obj);
			instance_create_layer(0, 0, "Game_Objects", Alarm2);
			break;
			
		case "fire":
			instance_create_layer(120, 40, "Game_Objects", fire_element_obj);
			instance_create_layer(0, 0, "Game_Objects", Alarm2);
			break;
			
		case "shadow":
			instance_create_layer(510, 80, "Game_Objects", shadow_element_obj);
			instance_create_layer(0, 0, "Game_Objects", Alarm2);
			break;
			
		case "spirit":
			instance_create_layer(410, 80, "Game_Objects", spirit_element_obj);
			instance_create_layer(0, 0, "Game_Objects", Alarm2);
			break;
		}
}

function playMatchSound(card_type)
{
	switch (card_type){
		case "air":
			audio_play_sound(air_sound, 10, false);
			
			break;
		
		case "water":
			audio_play_sound(water_sound, 10, false);
			
			break;
			
		case "earth":
			audio_play_sound(earth_sound, 10, false);
			
			break;
			
		case "fire":
			audio_play_sound(fire_sound, 10, false);
			
			break;
			
		case "shadow":
			audio_play_sound(shadow_sound, 10, false);
			
			break;
			
		case "spirit":
			audio_play_sound(spirit_sound, 10, false);
			
			break;
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