x = oplayer.x;
y = oplayer.y+10;


if(oplayer.controller == 0)
{
    image_angle = point_direction(x,y,mouse_x,mouse_y); // moving the object on the direction of mouse
}
else
{
   var controllerh = gamepad_axis_value(0,gp_axislh);
   var controllerv = gamepad_axis_value(0,gp_axislv);
   if(abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
   {
     controllerangle = point_direction(0,0,controllerh,controllerv)
   
   }
   image_angle = contollerangle;
}

// bullet animation 
firedelay = firedelay-1;
recoil = max(0,recoil -1);
if((mouse_check_button(mb_left)) ||  gamepad_button_check(0,gp_shoulderrb )   ) && (firedelay < 0)
{
    recoil = 4;
	firedelay = 5;
	screenshake(2,10);
	audio_play_sound(shoot,5,false);//for audio have 3 parameter i.e 1st is id which is shoot of audio file,2nd is priority for sound to drop the less prior sound, 3rd is loop for sound if false than sound doesnt loop and true will loop the sound
	audio_sound_pitch(shoot,choose(0.8,1.0,1.2));
	with (instance_create_layer(x,y,"bullet",obullet)) //
	{ 
	  speed = 25;
	  direction = other.image_angle + random_range(-3,3); // other. refer property of original object i.e ogun ,, random_range give bullet randow movement
	  image_angle = direction; 
    }
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270) // face off obj 0 = right ,90 = up, 180 = left, 270 = dowm  
{
   image_yscale = -1;
}

else
{
  image_yscale = 1;
   
}