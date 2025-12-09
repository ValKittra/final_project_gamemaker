if (alarm[1] >= 0)
{
    target_x = x + kb_x;
    target_y = y + kb_y;
}


var _horizontal = clamp(target_x -x, -1, 1);
var _vertical = clamp(target_y -y, -1, 1);

move_and_collide(_horizontal * move_speed, _vertical * move_speed, [obj_enemy, tilemap]);