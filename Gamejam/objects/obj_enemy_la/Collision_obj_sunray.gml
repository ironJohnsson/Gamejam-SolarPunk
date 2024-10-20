hp -= 1;
instance_destroy(other);

with other{
	instance_destroy();
}
