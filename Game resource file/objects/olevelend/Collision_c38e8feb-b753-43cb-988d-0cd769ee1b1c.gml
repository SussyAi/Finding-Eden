/// @description Move to next room

with(oplayer)
{
  if(hascontrol)
  {
  
  hascontrol = false;
  slideTransition(TRANS_MODE.GOTO,other.target);
  }

}
