/// @description Auto Save

// Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

// Create new sava
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);// everything in gamemaker is realno. mean everything u type is realno.

file_text_close(file);