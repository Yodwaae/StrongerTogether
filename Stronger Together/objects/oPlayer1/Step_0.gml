//Get Player Input
if(hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(ord("W"));
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


if ((position_meeting(bbox_left,bbox_top+vsp-oPlayer2.vsp,oPlayer2)) or (position_meeting(x-3,bbox_top+vsp-oPlayer2.vsp,oPlayer2)) or (position_meeting(x+10,bbox_top+vsp-oPlayer2.vsp,oPlayer2)) or (position_meeting(bbox_right,bbox_top+vsp-oPlayer2.vsp,oPlayer2))) and (oPlayer2.vsp > 0)
{
	vsp = 0;
}
if ((position_meeting(bbox_left,bbox_bottom+1,oPlayer2)) or (position_meeting(x-3,bbox_bottom+1,oPlayer2)) or (position_meeting(x+10,bbox_bottom+1,oPlayer2)) or (position_meeting(bbox_right,bbox_bottom+1,oPlayer2))) and (oPlayer2.vsp == -10)
{
	vsp = -10;
}



if ((place_meeting(x,y+1, oCollision)) or place_meeting(x,y+1,oBox) or place_meeting(x,y+1,oPlayer2)) and (key_jump)
{
	vsp = -10;
}


if (place_meeting(x,y,oBox)) and (position_meeting(bbox_left,bbox_bottom,oBox))
{
	x = x + 2;
}
if (place_meeting(x,y,oBox)) and (position_meeting(bbox_right,bbox_bottom,oBox))
{
	x = x - 2;
}
//Horizontal Collision
if ((place_meeting(x+hsp,y,oCollision)) or (place_meeting(x+hsp,y,oPlayer2))) or ((place_meeting(x+hsp,y,oBox)) and ((place_meeting(x+hsp+(sign(hsp)*32),y,oCollision)) or (place_meeting(x+hsp+(sign(hsp)*64),y,oCollision)) or (place_meeting(x+hsp+(sign(hsp)*32),y,oBox)) or (place_meeting(x+hsp+(sign(hsp)*64),y,oBox)) or (place_meeting(x+hsp+(sign(hsp)*32),y,oPlayer2)) or (place_meeting(x+hsp+(sign(hsp)*64),y,oPlayer2))))
{
	while (!place_meeting(x+sign(hsp),y,oCollision)) and (!place_meeting(x+sign(hsp),y,oPlayer2)) and (!place_meeting(x+sign(hsp),y,oBox))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if ((place_meeting(x,y+vsp,oCollision)) or (place_meeting(x,y+vsp,oBox)) or ((place_meeting(x,y+vsp,oPlayer2)) and vsp >0))  or ((place_meeting(x,y+vsp,oPlayer2)) and ((position_meeting(oPlayer2.bbox_left,oPlayer2.bbox_top+vsp,oCollision)) or (position_meeting(oPlayer2.bbox_right,oPlayer2.bbox_top+vsp,oCollision))))
{
	while (!place_meeting(x,y+sign(vsp),oCollision)) and (!place_meeting(x,y+sign(vsp),oPlayer2)) and (!place_meeting(x,y+sign(vsp),oBox))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;
