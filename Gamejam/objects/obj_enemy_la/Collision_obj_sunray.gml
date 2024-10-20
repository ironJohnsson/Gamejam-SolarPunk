hp -= 2;
instance_destroy(other);
state = HIT;

var dir = point_direction(x,y, x,y)

hspd_push = lengthdir_x(8, dir);
vspd_push = lengthdir_y(8, dir);

with other{
	instance_destroy();
}
