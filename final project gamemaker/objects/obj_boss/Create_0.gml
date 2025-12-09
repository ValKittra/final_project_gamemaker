global.boss = id;

target_x = x;
target_y = y;

tilemap = layer_tilemap_get_id("Tiles_Col");

move_speed = 4;
alarm[0] = 60;


// Knockback
kb_x = 0;
kb_y = 0;

damage = 1;