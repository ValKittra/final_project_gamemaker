global.player = id;
move_speed = 7;

tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 10;
hp_total = hp;
damage = 1;

facing = 0;
coins = 0;

audio_play_sound(Soundtrack2, 0, true);
