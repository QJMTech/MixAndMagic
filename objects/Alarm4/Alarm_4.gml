/// @description Win condition code

// set number counter to zero
number_obj.sprite_index = number_0_spr;

// stop regular BGM
audio_stop_sound(bgm_sound);

// start win music
audio_play_sound(winSong_mixdown_sound, 3, false);

// show win screens and animation
instance_create_layer(190, 850, "Win_Objects", restart_button_obj);
instance_create_layer(0, 0, "Win_Objects", fireworks_obj);
instance_create_layer(20, 300, "Win_Objects", win_screen_obj);

