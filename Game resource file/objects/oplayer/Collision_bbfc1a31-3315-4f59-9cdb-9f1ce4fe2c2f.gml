/// @description Die

with (ogun) instance_destroy();
instance_change(oplayerdead,true); //object 1st , 2nd performance that is true for death

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if(sign(hsp) != 0) image_xscale = sign(hsp);

