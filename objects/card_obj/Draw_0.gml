/// @description Insert description here
// You can write your code in this editor

if( sprite_index == card_back_spr )
{
	if( instance_position( mouse_x, mouse_y, self) )
	{
		var random_x = irandom_range(-1, 1);
		var random_y = irandom_range(-1.5, 1.5);
		draw_sprite_ext( sprite_index, image_index, x + random_x, y + random_y, image_xscale, image_yscale, 0, c_white, 1);
	}
	else
	{
		draw_self();
	}
}
else
{
	draw_self();	
}