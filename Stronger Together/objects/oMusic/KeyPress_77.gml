if (audio_is_paused(snNewerWabeByKevinMcLeod))
{
	audio_resume_sound(snNewerWabeByKevinMcLeod)
	image_index = 0;
}
else
{
	audio_pause_sound(snNewerWabeByKevinMcLeod)
	image_index = 1;
}