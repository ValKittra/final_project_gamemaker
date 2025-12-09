buff_debuff_list = ["+2 damage", "Become bigger", "Heal 20 HP" , "Bigger projectiles", "Less attack cooldown",  "+1 speed"];
state = "choose";
show_choices = true;
selected_buffs = [];
buff_applied = false;
boss_buff_applied = false;
global.pending_boss_buffs = [];

//Fire 2 projectiles instead of 1, "+25% HP","Copy the next buff the boss gains", "Fail counts as partial success next time", "Reroll",