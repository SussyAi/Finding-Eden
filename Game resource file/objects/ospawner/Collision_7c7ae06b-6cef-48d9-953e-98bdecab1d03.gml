/// @description Start waves

if (triggered == false)
{
	//close door and stop from triggering 
	with (odoor) closed = true;
	triggered = true;
	
	//work out number of waves and enemies per wave
	total_waves = -1;
	for ( var i = 0; i < ds_list_size(waves); i++)
	{
		var thisentry = ds_list_find_value(waves,i);
		if (thisentry [_wave] > total_waves)
		{
			total_waves++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++;
	}

}