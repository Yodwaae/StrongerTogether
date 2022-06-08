if (!instance_exists(oText)) and (!instance_exists(oText3)) and (!instance_exists(oText2))
{
	with (instance_create_layer(x,y-64,layer,oText))
	{
		text = other.text;
		length = string_length(text);
	}
		with (instance_create_layer(x,y-64,layer,oText2))
	{
		text = other.text2;
		length = string_length(text);
	}
	with (instance_create_layer(x,y-64,layer,oText3))
	{
		text = other.text3;
		length = string_length(text);
	}
}
