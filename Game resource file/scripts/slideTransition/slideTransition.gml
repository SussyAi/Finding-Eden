/// @desc SlideTransition(mode, tragetroom)
/// @arg Mode sets tansition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode.

with(otransition)
{
   mode = argument[0];
   if ( argument_count > 1) target = argument[1];
}
   