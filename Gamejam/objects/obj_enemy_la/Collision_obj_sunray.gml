hp -= 2;
instance_destroy(other);
state = HIT;

var hb = other.image_angle;
var _x = x + dcos(hb) * hspd_push;
var _y = y - dsin(hb) * vspd_push;

var dir = point_direction(x,y, _x,_y)
hspd_push = lengthdir_x(8, dir);
vspd_push = lengthdir_y(8, dir);

with other{
	instance_destroy();
}
