// Apply all pending buffs
//show_message(global.pending_boss_buffs);

for (var i = 0; i < array_length(global.pending_boss_buffs); i++)
{
    var buff = global.pending_boss_buffs[i];
    with (global.boss)
    switch (buff)
    {
        case "+1 speed":     move_speed += 1; break;
        case "+2 damage":    damage += 2; break;
        case "Become bigger":
            image_xscale += 0.7;
            image_yscale += 0.7;
        break;
    }
}

