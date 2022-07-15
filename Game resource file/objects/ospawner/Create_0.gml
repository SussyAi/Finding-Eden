/// @description Set up

#macro _wave 0  // macro use as slot for the array where we provided with the english name.
#macro _type 1
#macro _spawn 2 //we can also use enum here ( check the tutorial ) 
#macro _delay 3 

triggered = false;
timer = 0;
current_wave = 0;
 // for debugger mark the visible in object for ospawner