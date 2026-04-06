key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;
if(place_meeting(x,y+1,obj_invisible_wall)) && djump = 0
{
	djump = 1;
}




if(place_meeting(x,y+1,obj_invisible_wall)) && (key_jump)
{
	vsp = -jumpsp;
}
else if (!place_meeting(x,y+1,obj_invisible_wall)) && (key_jump) && djump = 1
{
	vsp = -djumpsp;
	djump = 0;
}





if (place_meeting(x+hsp,y,obj_invisible_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_invisible_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y+vsp,obj_invisible_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_invisible_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if(!place_meeting(x,y+1,obj_invisible_wall))
{
	sprite_index = spr_player_jump;
	image_speed = 0;
	if(vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_player_walk;
	}
}
if (hsp!=0) image_xscale = sign(hsp);
if(place_meeting(x,y,obj_damage_block))
{
	room_restart()
}