/// @description Spawn things 

if (triggered)
{
	//check the list for enemies that are ready to spawn and if they are the right wave/time spawn time!
	for (var i= 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i)
		if(next[_wave] == current_wave) && (next[_delay] == timer)
		{
			var spawnpoint = next[_spawn];
			instance_create_layer(spawn[spawnpoint,0],spawn[spawnpoint,1],"enemy",next[_type]); 
			//"enemy" is the instance layer in the room
		}
	}
	
	// Increase timer
	timer++;
	
	// Next wave or end spawner when all enemies have died
	if (remaining[current_wave] <= 0)
	{
		if (current_wave == total_waves)
		{
			with (odoor) closed = false;
			instance_destroy();
		}
		else
		{
			current_wave++;
			timer = 0;
		}
	}
}
	
