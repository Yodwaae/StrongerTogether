if (instance_exists(oCoin) == false) and changed = false
{
	image_alpha = 1;
	changed = true;
}

if (place_meeting(x,y,oPlayer2))
{
	if (!instance_exists(oCoin)) reached = true;
}
else
{
	reached = false;
}
