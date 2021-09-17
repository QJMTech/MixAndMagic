	// spawn matching element and animation
	spawnElement( card1.attribute );

	// plays the sound of matching cards
	playMatchSound( card1.attribute );

	// delete card instances
	instance_destroy(card1);
	instance_destroy(card2);
// player can now flip another card
cantFlip = false;