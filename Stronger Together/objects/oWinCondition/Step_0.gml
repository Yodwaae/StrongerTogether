if (instance_exists(oLevelEndP1) and instance_exists(oLevelEndP2))
{
if (oLevelEndP2.reached == true) and (oLevelEndP1.reached == true)
{
	with(oPlayer1)
	{
		if (hascontrol)
		{
			hascontrol = false;
		}
	}
	with(oPlayer2)
	{
		if (hascontrol)
		{
			hascontrol = false;
		
		}

	}	
		ScrSlideTransition(TRANS_MODE.NEXT);
}
}