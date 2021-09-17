/// @description restarts game
audio_play_sound(click_sound, 10, false);

// restart game
room_restart();

// restart bgm
audio_play_sound(bgm_sound, 10, true);