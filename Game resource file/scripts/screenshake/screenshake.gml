/// @desc SreenShake(magnitude,value)
/// @arg Magnitude sets the strenght of the shake (radius in pixels)
/// @arg Frames sets the lenght if the shake in frames ( 60 = 1 seconds at 60fps)

with (ocamera)
{
	if (argument0 >  shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
		
	}
}