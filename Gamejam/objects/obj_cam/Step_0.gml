global.cmx = lerp(global.cmx, obj_player.x - global.cmw/2, .25);
global.cmy = lerp(global.cmy, obj_player.y - global.cmh/2, .25);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);