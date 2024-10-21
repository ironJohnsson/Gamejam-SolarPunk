/// @description HIT
scr_col_enem();
hspd_push = lerp(hspd_push,0,.1);
vspd_push = lerp(vspd_push,0,.1);

if point_distance(0,0, hspd_push,vspd_push) < 1{
 state = MOV	
}
