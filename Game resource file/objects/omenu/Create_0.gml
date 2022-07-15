/// @description GUI/menu setup/vars
#macro SAVEFILE "Save.sav" // marco are type of varaible that contain 1 thing and doesnot change also dont end with ;(semicolon) 



gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width;//+200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; // lower is faster
menu_font = fmenu;
menu_itemheight = font_get_size(fmenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_item = array_length_1d(menu);

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_item);


menu_cursor = 2; //determine menu 2 new game 


