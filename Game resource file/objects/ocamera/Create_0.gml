/// @description setup camera
cam = view_camera[0];
follow = oplayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xto = xstart;
yto = ystart; 

// screen shake
shake_length = 0; // 60 mean 1 sec
shake_magnitude = 0; // 6 pixel to shake the screen
shake_remain = 0; // li,it the shake
buff = 32;

