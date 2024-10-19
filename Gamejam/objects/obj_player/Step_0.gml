//variaveis
var left, right, jmp, _atk;
var _floor = place_meeting(x,y+1, obj_block);



right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jmp = keyboard_check(vk_space);
//movimentação
velh = (right - left) * max_velh

//aplicando gravidades
if(!_floor)
{
	velv+= gravidade * massa;	
}
else //pululante no chão
{
		if (jmp)
		{
			velv = -max_velv	
		}
}