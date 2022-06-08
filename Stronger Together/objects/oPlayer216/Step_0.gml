//Calculate Movement

vsp = vsp + grv;

//Vertical Collision
if (place_meeting(x,y+vsp,oCollision))
{
	while (!place_meeting(x,y+sign(vsp),oCollision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;