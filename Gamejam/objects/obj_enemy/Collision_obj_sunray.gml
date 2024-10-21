hp -= 1;
instance_destroy(other);
state = HIT;

var hb = other.image_angle;
var _x = x + dcos(hb) * hspd_push;
var _y = y - dsin(hb) * vspd_push;

var dir = point_direction(x,y, _x,_y)

hspd_push = lengthdir_x(10, dir);
vspd_push = lengthdir_y(10 , dir);

with other{
	instance_destroy();
}



