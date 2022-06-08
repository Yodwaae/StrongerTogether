// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations

#region

var _p = part_type_create();

part_type_shape(_p,pt_shape_pixel);
part_type_life(_p,20,20);
part_type_color_rgb(_p,178,252,41,60,66,94);
part_type_alpha2(_p, 1, 0);
part_type_speed(_p, 1.4,1.4,0,0);
part_type_direction(_p,0,360,0,0);
part_type_size(_p,4,4,0,0);

global.ptBasic = _p;

#endregion
