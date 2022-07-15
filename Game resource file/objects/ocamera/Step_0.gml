/// @description Update camera
 
// UPDATE DESTINATION
if (instance_exists(follow))
{
  xto=follow.x;
  yto=follow.y;

 if ((follow).object_index == oplayerdead)
 {
	 x = xto;
	 y = yto;
 }
}
// UPDATE OBJECT POSITION
 x += (xto - x) / 25;
 y += (yto - y) / 25;
 
// keep camera center inside room  
 x = clamp(x,view_w_half+buff,room_width - view_w_half-buff);
 y = clamp(y,view_h_half+buff,room_height - view_h_half-buff);
// screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


//UPDATE CAMERA VIEW
 camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

// background parellet movement
if (layer_exists("mountain"))
{
	layer_x("mountain",x/2);
     
	  
}

if (layer_exists("tree"))
{
	layer_x("tree",x/4);
     
	  
}