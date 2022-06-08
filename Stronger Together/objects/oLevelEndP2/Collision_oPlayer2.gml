// Move to next room

if (place_meeting(x,y,oPlayer2))
{
	if (!instance_exists(oCoin)) reached = true;
}
else
{
	reached = false;
}