if (show_choices)
{
    var mx = mouse_x;
    var my = mouse_y;

    // BUTTON 1
    if (mx > 350 && mx < 350 + 500 && my > 150 && my < 150 + 50)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            chosen_buff = choice1;
            show_choices = false;
            state = "roll";
        }
    }

    // BUTTON 2
    if (mx > 350 && mx < 350 + 500 && my > 350 && my < 350 + 50)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            chosen_buff = choice2;
            show_choices = false;
            state = "roll";
        }
    }

    // BUTTON 3
    if (mx > 350 && mx < 350 + 500 && my > 550 && my < 550 + 50)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            chosen_buff = choice3;
            show_choices = false;
            state = "roll";
        }
    }
}

// After selecting a button; roll the dice
if (state == "roll")
{
    roll = irandom_range(1, 20);
    show_debug_message("ROLLED " + string(roll) + "  — room: " + string(room));
    // build the text
    if (roll <= 8)      roll_text = "FAIL — Boss gets the buff!";
    else if (roll <= 14)roll_text = "PARTIAL SUCCESS — Both get the buff!";
    else if (roll <= 19)roll_text = "SUCCESS — You get the buff!";
    else                roll_text = "CRITICAL SUCCESS — You get double buff!";
    state = "result";
}


//getting the buffs
if (state == "result" && !buff_applied)
{
    // FAIL → Boss only
    if (roll <= 8)
    {
        if (variable_global_exists("boss"))
        {
            apply_buff_to(global.boss);
        }
        else
        {
            array_push(global.pending_boss_buffs, chosen_buff);
        }
    }

    // PARTIAL SUCCESS → Both
    else if (roll <= 14)
    {
        if (variable_global_exists("player"))
            apply_buff_to(global.player);

        if (variable_global_exists("boss"))
            apply_buff_to(global.boss);
        else
            array_push(global.pending_boss_buffs, chosen_buff);
    }

    // SUCCESS → Player only
    else if (roll <= 19)
    {
        if (variable_global_exists("player"))
            apply_buff_to(global.player);
    }

    // CRIT
    else
    {
        if (variable_global_exists("player"))
        {
            apply_buff_to(global.player);
            apply_buff_to(global.player);
        }
    }
     // Safe debug output
    if (variable_global_exists("player"))
    {
        show_debug_message("current players speed is " + string(global.player.move_speed));
        show_debug_message("current players dmg is " + string(global.player.damage));
    }

    if (variable_global_exists("boss"))
    {
        show_debug_message("current boss speed is " + string(global.boss.move_speed));
        show_debug_message("current boss dmg is " + string(global.boss.damage));
    }
    else
    {
        show_debug_message("Boss does NOT exist yet!");
    }


    buff_applied = true;
}


function apply_buff_to(target)
{
    with (target)
    {
        switch (other.chosen_buff)
        {
            case "+1 speed":
                move_speed += 1;
                break;

            case "+2 damage":
                damage += 2; 
                break;

            case "Become bigger":
                image_xscale += 0.7;
                image_yscale += 0.7;
                break;
            
            case "Heal 5 HP":
                hp += 5;
                break;
            //case "Bigger projectiles":
                //global.projectile_scale += 0.7;
                //break;
            //case "Less attack cooldown":
                //with (global.player)
                //{
                    //shoot_cooldown_max = max(1, shoot_cooldown_max - 10);
                //}
                //break;
                
        }
    }
}
        
