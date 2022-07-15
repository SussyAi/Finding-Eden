vsp = vsp + grv;

//Dont walk of edges
if(grounded) && (afraidofheight) && (!place_meeting(x+hsp,y+1,owall))
{
	hsp = -hsp;
}

// HORIZONTAL COLLISION
if (place_meeting(x+hsp,y,owall))
{
  while(!place_meeting(x+sign(hsp),y,owall)) // sign return 1 or -1
  {
    x = x + sign(hsp);
  }
 hsp = -hsp;
}
x = x + hsp; // vertical coordinate of room

// VERTICAL COLLISION
if (place_meeting(x,y+vsp,owall))
{
  while(!place_meeting(x,y+sign(vsp),owall)) // sign return 1(for+ve no.) or -1(for _ve no.)
  {
    y = y + sign(vsp);
  }
 vsp = 0;
}
y = y + vsp; // horizontal  coordinate of room

// ANIMATION
if(!place_meeting(x,y+1,owall))
{
	grounded = false;
   sprite_index=enemyupdown;  //which sprite we using 
   image_speed=0;     // 0 is speed of animation at 1 = speed 15 that set during the spirte creation animation
   if(sign(vsp) > 0) image_index = 1; else image_index = 0;  //which frame of that spirte we are using  // if inline statement 
   
}
else 
{
	grounded = true;
    image_speed=1;
	if(hsp==0)
	{
	   sprite_index = enemy;
	}
	else
	{
	    sprite_index= enemyrun;
	}
}

if (hsp!=0) image_xscale = sign(hsp) * size; //  image_xscale=1 , 1 mean 100% scaling 
image_yscale = size;

