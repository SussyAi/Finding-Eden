/// @description Tick down a spawner of one exists
if (instance_exists(ospawner))
{
	with (ospawner)
	{
		if (triggered)
		{
			remaining[current_wave]--;
		}
	}
}
