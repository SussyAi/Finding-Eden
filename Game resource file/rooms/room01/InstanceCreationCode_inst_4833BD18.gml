// [wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves,[0,oenemy,0,0]);
ds_list_add(waves,[0,oenemy,0,50]);
ds_list_add(waves,[0,oenemy,0,100]);
ds_list_add(waves,[0,oenemy,1,0]);
ds_list_add(waves,[0,oenemy,1,50]);
ds_list_add(waves,[0,oenemy,1,100]);


ds_list_add(waves,[1,oenemy,0,10]);
ds_list_add(waves,[1,oenemy,0,20]);
ds_list_add(waves,[1,oenemy,0,30]);
ds_list_add(waves,[1,oenemy,0,40]);
ds_list_add(waves,[1,oenemy,0,50]);
ds_list_add(waves,[1,oenemy,0,60]);

ds_list_add(waves,[2,oenemy,1,10]);
ds_list_add(waves,[2,oenemy,1,20]);
ds_list_add(waves,[2,oenemy,1,30]);
ds_list_add(waves,[2,oenemy,1,40]);
ds_list_add(waves,[2,oenemy,1,50]);
ds_list_add(waves,[2,oenemy,1,60]);

ds_list_add(waves,[3,oenemy,1,0]);


spawn[0,0] = 500; // x axis for first spawn point
spawn[0,1] = 150; // y axis for first spawn point
spawn[1,0] = 1600; // x axis for 2nd spawn point
spawn[1,1] = 180; // yx axis for 2nd  spawn point

// for the value of location in spawn room move the mouse cursor on the room of the map where u 
// want to spawn the enemy wave 