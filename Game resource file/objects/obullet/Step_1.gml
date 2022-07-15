if (place_meeting(x,y,pshootable))
{
with (instance_place(x,y,pshootable))
{
   
   hp = hp - 1; // or h-- 
   flash = 3;
   hitfrom = other.direction;
}

instance_destroy();
}

if (place_meeting(x,y,owall)) && (image_index != 0)  instance_destroy();