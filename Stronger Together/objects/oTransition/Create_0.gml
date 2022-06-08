// Size variables and mode set up

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO	
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;


// Creating Particles System

global.partSystem = part_system_create();
part_system_depth(global.partSystem, -100);