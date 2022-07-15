hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;
screenshake(6,60);
audio_play_sound(death,10,false);
game_set_speed(30,gamespeed_fps); // used to handle the actual game frame speed during runtime . also for slowmotion effect
with (ocamera) follow = other.id;