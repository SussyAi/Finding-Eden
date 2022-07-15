	if(done == 0)
	{
	vsp = vsp + grv;

	// HORIZONTAL COLLISION
	if (place_meeting(x+hsp,y,owall))
	{
	  while(!place_meeting(x+sign(hsp),y,owall)) // sign return 1 or -1
	  {
	    x = x + sign(hsp);
	  }
	 hsp = 0;
	}
	x = x + hsp; // vertical coordinate of room

	// VERTICAL COLLISION
	if (place_meeting(x,y+vsp,owall))
	{
	  if (vsp > 0)
	  { done = 1;
	  image_index=1;
	 }
	  while(!place_meeting(x,y+sign(vsp),owall)) // sign return 1(for+ve no.) or -1(for _ve no.)
	  {
	    y = y + sign(vsp);
	  }
	 vsp = 0;
	}
	y = y + vsp;

	}