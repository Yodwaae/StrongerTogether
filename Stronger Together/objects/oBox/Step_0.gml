vsp = vsp + grv;
if (((place_meeting(x-oPlayer1.hsp,y,oPlayer1))) and (!place_meeting(x+oPlayer1.hsp,y,oCollision)) or ((place_meeting(x+oPlayer1.hsp,y,oPlayer1)) and (!place_meeting(x-oPlayer1.hsp,y,oCollision))))
{
	hsp = oPlayer1.hsp;
}
else
{
	hsp = 0;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oCollision)) or (place_meeting(x+hsp,y,oPlayer2)) or (place_meeting(x+hsp,y,oBox))
{
	while (!place_meeting(x+sign(hsp),y,oCollision)) and (!place_meeting(x+sign(hsp),y,oPlayer1)) and (!place_meeting(x+sign(hsp),y,oPlayer2)) and (!place_meeting(x+sign(hsp),y,oBox))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oCollision) or (place_meeting(x,y+vsp,oBox)) or (place_meeting(x,y+vsp,oPlayer1) or (place_meeting(x,y+vsp,oPlayer2)) and vsp > 0))
{
	while (!place_meeting(x,y+sign(vsp),oCollision)) and (!place_meeting(x,y+sign(vsp),oPlayer1)) and (!place_meeting(x,y+sign(vsp),oPlayer2)) and (!place_meeting(x,y+sign(vsp),oBox))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;