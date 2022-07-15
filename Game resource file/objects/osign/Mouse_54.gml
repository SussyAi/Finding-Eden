/// @description 

if (point_in_circle(oplayer.x,oplayer.y,x,y,64)) && (!instance_exists(otext)) // mean within 64 pixel of sign this condition is going to return true
{
	with (instance_create_layer(x,y-64,layer,otext))
	{
		text = other.text;  //mean what ever we write in this "with" going to show in the game
		length = string_length(text);
	}
	
	with(ocamera)
	{
		follow = other.id;
	}
}
