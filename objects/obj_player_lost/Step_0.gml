/// @description Insert description here
// You can write your code in this editor

// Go to start menu if escape is pressed
if(keyboard_check_pressed(vk_escape)){
	room_goto(0);
	return;
}

// Restart game on any type of press
if(mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_anykey)){
	room_goto(1);
	return;
}