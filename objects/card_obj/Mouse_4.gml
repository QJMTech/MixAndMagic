
// player can only flip a card if this is false
if(cantFlip == false)
{
	// play flip card sound
	audio_play_sound(flip_card, 4, false);

	/// @description Flip and compare card
	flipCard();
}
