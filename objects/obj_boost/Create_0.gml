/// @description Insert description here
// You can write your code in this editor

function start_boost(){
	x = parent_object.x;
	y = parent_object.y;
	image_angle = parent_object.image_angle;
	
	instance_activate_object(id);
}

function stop_boost(){	
	instance_deactivate_object(id);
}