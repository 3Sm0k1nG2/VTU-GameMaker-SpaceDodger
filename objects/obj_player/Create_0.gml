/// @description Insert description here
// You can write your code in this editor

#macro A 65
#macro D 68

// Settings

booster_obj = instance_create_layer(x, y,"Instances", obj_boost, {parent_object: id, is_toggleable: true})

// Functions

function input_handler(){
	if(keyboard_check(vk_left) || keyboard_check(A)){
		move(0);
	}
	
	if(keyboard_check(vk_right) || keyboard_check(D)){
		move(1);
	}
	
	if(keyboard_check(vk_space)){
		boost();
	}
}

function move(_dir = -1){
	switch(_dir) {
		// Left
		case 0:
			image_angle += 4;
			break;
			
		// Right
		case 1:
			image_angle -= 4;
			break;
	}
}

function boost(){
	motion_add(image_angle, 0.1);
	
	booster_obj.start_boost();
	if(audio_is_playing(snd_sweep_transition) == false) {
		audio_play_sound(snd_sweep_transition, 0, 0);
	}
}
