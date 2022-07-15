/// @description size variable and mode setup

w = display_get_gui_width(); //gui is separate screen layer 
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE  // enmu turn set of no. into english readable word
{
  OFF,
  NEXT,
  GOTO,                  // value automatically assigne to them 
  RESTART,
  INTRO

}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;