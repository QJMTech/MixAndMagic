// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flipCard(){
	
	// id of instance gets converted to list(deck) id
	var offset_of_instances = 5;
	var temp_id = id - 100000 - offset_of_instances;
	
	// If the sprite index is the back of the card, flip to correct card_face
	if(sprite_index == card_back_spr)
	{
		if(ds_list_find_value(deck, temp_id) == "air")
		{
			sprite_index = card_air_spr;
		}
		if(ds_list_find_value(deck, temp_id) == "fire")
		{
			sprite_index = card_fire_spr;
		}
		if(ds_list_find_value(deck, temp_id) == "earth")
		{
			sprite_index = card_earth_spr;
		}
		if(ds_list_find_value(deck, temp_id) == "water")
		{
			sprite_index = card_water_spr;
		}
		if(ds_list_find_value(deck, temp_id) == "spirit")
		{
			id.sprite_index = card_spirit_spr;
		}
		if(ds_list_find_value(deck, temp_id) == "shadow")
		{
			id.sprite_index = card_shadow_spr;
		}
	}
	// Otherwise, filp to back of card
	else
	{
		sprite_index = card_back_spr;
	}
	
}