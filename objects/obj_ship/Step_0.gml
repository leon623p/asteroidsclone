/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left)){
	image_angle = image_angle + 5;
	
	
}

if(keyboard_check(vk_right)){
	image_angle = image_angle - 5;
	
	
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
	
	
}

if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_zap, 1, false);
	var inst2 = instance_create_layer((x) ,(y + 10), "Instances", obj_bullet);
	inst2.direction = image_angle;
	var inst3 = instance_create_layer((x + 10) ,(y), "Instances", obj_bullet);
	inst3.direction = image_angle;
	
	
}

move_wrap(true,true,sprite_width/2);