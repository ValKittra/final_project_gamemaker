var _horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_horizontal * move_speed, _vertical * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_horizontal != 0 or _vertical != 0)
{
    if(_vertical > 0) sprite_index = cat_front; 
    else if (_vertical < 0) sprite_index = cat_back; 
    else if (_horizontal > 0) sprite_index = cat_right;
    else if (_horizontal < 0) sprite_index = cat_left;  
    
    facing =  point_direction(0, 0 , _horizontal, _vertical)
} 
else {
	if (sprite_index == cat_right) sprite_index = cat_idle;
    else if (sprite_index == cat_left) sprite_index = cat_idle;
    else if (sprite_index == cat_back) sprite_index = cat_back_idle;
    else if (sprite_index == cat_front) sprite_index = cat_idle;
}


if (mouse_check_button_pressed(mb_left))
{
    var projectile_dir = point_direction(x, y, mouse_x, mouse_y);
    var player_projectile = instance_create_layer(x, y, "Instances", obj_projectile);
    player_projectile.direction = projectile_dir;
    player_projectile.image_angle = projectile_dir;
    player_projectile.damage *= damage;
}
