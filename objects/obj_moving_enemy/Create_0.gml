/// @description Insert description here
// You can write your code in this editor

image_angle = random_range(0, 360);
motion_add(image_angle, 0.1);

(instance_create_layer(x,y, "Instances", obj_boost, {parent_object: id})).start_boost();
