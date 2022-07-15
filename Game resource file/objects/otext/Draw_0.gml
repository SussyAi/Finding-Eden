/// @description 

var halfw = w * 0.5;

// Draw the box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-boarder,y-h-(boarder*2),x+halfw+boarder,y,15,15,false);
draw_sprite(marker,0,x,y);
draw_set_alpha(1);

//Draw text

drawsettext(c_white,fsign,fa_center,fa_top);
draw_text(x,y-h-boarder,text_current);
