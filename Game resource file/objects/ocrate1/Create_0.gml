/// @description Create WALL

mywall = instance_create_layer(x,y,layer,owall);
with(mywall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}
