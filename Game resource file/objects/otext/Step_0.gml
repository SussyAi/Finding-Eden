/// @description Progress Text

letter += spd;
text_current = string_copy(text,1,letter);  //dont copy from 0 as it doesnot determine in gamemaker so always start with 1

draw_set_font(fsign);
if(h == 0) h =string_height(text); //how high it with the pixel in height with font that draw from"text"
w = string_width(text_current);

//Destroy when done
if(letter >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with (ocamera) follow = oplayer;
}
