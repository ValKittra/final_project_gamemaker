if (alarm[1] >= 0)
{
    target_x = x + kb_x;
    target_y = y + kb_y;
}


var _horizontal = clamp(target_x -x, -1, 1);
var _vertical = clamp(target_y -y, -1, 1);

move_and_collide(_horizontal * move_speed, _vertical * move_speed, [obj_boss, tilemap]);



// Number of projectiles the boss will shoot at once
var num_projectiles = 9;  // Adjust this value to control how many projectiles to shoot

if (can_shoot) 
{
    for (var i = 0; i < num_projectiles; i++) 
    {
        var projectile_dir = random_range(0, 360);
        
        var p = instance_create_layer(x, y, "Instances", obj_boss_projectiles);
        
        p.direction = projectile_dir;
        p.image_angle = projectile_dir;
        p.damage = damage;
    }

    can_shoot = false;

    alarm[2] = shoot_cooldown_max;  
}

if (alarm[2] == 0) {
    can_shoot = true;
}

