/// @description Insert description here
// You can write your code in this editor

//play button sound (temp card flip)
audio_play_sound(flip_card, 2, false);


// Create pause buttons
instance_create_layer(40, 200, "Pause_menu", return_game_obj);
instance_create_layer(40, 400, "Pause_menu", restart_button_obj);
instance_create_layer(40, 600, "Pause_menu", main_menu_button_obj);


// create pause background
instance_create_layer(0, 0, "Pause_menu", pause_menu_bg_obj);