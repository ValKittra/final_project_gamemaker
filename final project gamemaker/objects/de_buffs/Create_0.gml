buff_debuff_list = ["+2 damage", "Become bigger", "+25% HP", "Bigger projectiles", "Copy the next buff the boss gains", "Fail counts as partial success next time", "Reroll", "+1 speed"];
state = "choose";
show_choices = true;
selected_buffs = [];
buff_applied = false;
boss_buff_applied = false;
global.pending_boss_buffs = [];

//Fire 2 projectiles instead of 1