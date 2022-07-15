// GET PLAYER INPUT
// step event happen every fps
// assagning the movement with any keys on keyboard
#region
if (hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); //check for left key to press on vk(virtual keyboard) assagin no. 1 or 0 to key left
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//controller input
if (key_left) || (key_right) || (key_jump)
{
    controller = 0;
}

if (abs (gamepad_axis_value(0,gp_axislh)) > 0.2)
{
    key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller = 1;
}

if (gamepad_button_check_pressed(0,gp_face1))
{
   key_jump = 1;
    controller =1;

}
}
else
{

key_right = 0;
key_left = 0;
key_jump = 0;

}

#endregion

// CALCULATE MOVEMENT
// var stablish those blue variable & its temporary
var move = key_right - key_left; // 1 for right and 0 for no move & -1 for left

hsp = move * walksp;
vsp = vsp + grv;



// Jumping
canjump -= 1;
if(canjump > 0) && (key_jump)
{
  vsp = -9;
  canjump = 0;
}

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
   sprite_index=playerupdown;  //which sprite we using 
   image_speed=0;     // 0 is speed of animation at 1 = speed 15 that set during the spirte creation animation
   if(sign(vsp) > 0) image_index = 1; else image_index = 0;  //which frame of that spirte we are using  // if inline statement 
   
}
else 
{
	canjump = 10;
	if(sprite_index == playerupdown) // for audio to check condition of our player is in air or ground 
	{
		audio_sound_pitch(landing,choose(0.8,1.0,1.2));
		audio_play_sound(landing,4,false); // audio for landing 
	}
	image_speed=1;
	if(hsp==0)
	{
	   sprite_index = player;
	}
	else
	{
	    sprite_index= player_run;
	}
}

if (hsp!=0) image_xscale = sign(hsp); //  image_xscale=1 , 1 mean 100% scaling 

