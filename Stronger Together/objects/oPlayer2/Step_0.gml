//Get Player Input
if (hascontrol)
{
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_up);
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
//Calculate Movement
var move = key_right - key_left;

hsp = move * walkspd;

vsp = vsp + grv;
if ((position_meeting(bbox_left,bbox_top+vsp-oPlayer1.vsp,oPlayer1)) or (position_meeting(bbox_right,bbox_top+vsp-oPlayer1.vsp,oPlayer1))) and oPlayer1.vsp > 0 // place_meeting(x,y+vsp-oPlayer1.vsp,oPlayer1) 
{
	vsp = 0;
}
if ((position_meeting(bbox_left,bbox_bottom+1,oPlayer1)) or (position_meeting(bbox_right,bbox_bottom+1,oPlayer1)))and (oPlayer1.vsp == -10) // place_meeting(x,y-oPlayer1.vsp,oPlayer1)
{
	vsp = -10;
}

if ((place_meeting(x,y+1, oCollision))  or place_meeting(x,y+1,oPlayer1) or place_meeting(x,y+1,oBox)) and (key_jump) 
{
	vsp = -10;
}


//Horizontal Collision
if (place_meeting(x+hsp,y,oCollision)) or (place_meeting(x+hsp,y,oPlayer1)) or (place_meeting(x+hsp,y,oBox))
{
	while (!place_meeting(x+sign(hsp),y,oCollision)) and (!place_meeting(x+sign(hsp),y,oPlayer1))  and (!place_meeting(x+sign(hsp),y,oBox))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision

if (place_meeting(x,y+vsp,oCollision) or (place_meeting(x,y+vsp,oBox)) or (place_meeting(x,y+vsp,oPlayer1) and vsp > 0))  or ((place_meeting(x,y+vsp,oPlayer1)) and ((position_meeting(oPlayer1.bbox_left,oPlayer1.bbox_top+vsp,oCollision)) or (position_meeting(oPlayer1.bbox_right,oPlayer1.bbox_top+vsp,oCollision))))
{
	while (!place_meeting(x,y+sign(vsp),oCollision)) and (!place_meeting(x,y+sign(vsp),oPlayer1)) and (!place_meeting(x,y+sign(vsp),oBox))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;