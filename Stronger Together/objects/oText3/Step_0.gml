 /// @desc Progress Text

letters+= spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fMenu);
if (h == 0) h = string_height(text);
w = string_width(text_current);

// Destroy when done

if (letters >= lenght) and (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
}

