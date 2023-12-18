/// @description Insert description here
// You can write your code in this editor

#macro ENEMIES_COUNT 10


// Enemy Types Declaration
var _enemy_types = ds_list_create();
ds_list_add(_enemy_types, obj_enemy, obj_moving_enemy);

var _enemy_types_size = ds_list_size(_enemy_types);
var _enemy_types_index = -1
var _random_enemy_object;

// Size Declarations
var _enemy_max_random_width = room_width-sprite_get_width(object_get_sprite(obj_enemy));
var _enemy_max_random_height = room_height-sprite_get_height(object_get_sprite(obj_enemy));
var _win_max_random_width = room_width-sprite_get_width(object_get_sprite(obj_win));
var _win_max_random_height = room_height-sprite_get_height(object_get_sprite(obj_win));

var _enemies_left_to_create_count = ENEMIES_COUNT;
var _enemy_transform_to_moving;

var _x;
var _y;

// Spawn static enemy objects
while(_enemies_left_to_create_count > 0){
	_x = random(_enemy_max_random_width);
	_y = random(_enemy_max_random_height);

	if(position_empty(_x,_y)){
		_enemy_types_index = int64(random_range(0, _enemy_types_size));
		_random_enemy_object = ds_list_find_value( _enemy_types, _enemy_types_index);
	
		switch(_random_enemy_object){
			case obj_enemy:
				_enemy_transform_to_moving = instance_create_layer(_x, _y, "Instances", obj_enemy);
				break;
			case obj_moving_enemy:
				_enemy_transform_to_moving = instance_create_layer(_x, _y, "Instances", obj_moving_enemy);
				break;
		}
		
		_enemies_left_to_create_count--;
	}
}

// Spawn win object
_x = random(_win_max_random_width);
_y = random(_win_max_random_height);

while(!position_empty(_x,_y)){
	_x = random(_win_max_random_width);
	_y = random(_win_max_random_height);
}

instance_create_layer(_x, _y, "Instances", obj_win);
