

if state == "choose"
    {
        choice1 = buff_debuff_list[irandom(array_length(buff_debuff_list) - 1)];
        do{
            choice2 = buff_debuff_list[irandom(array_length(buff_debuff_list) - 1)];
        }until (choice2 != choice1);
        do{
            choice3 = buff_debuff_list[irandom(array_length(buff_debuff_list) - 1)];
        }until (choice3 != choice2 && choice3 != choice1);
            
        array_push(selected_buffs, choice1, choice2, choice3);
        //show_message(selected_buffs);
    };

show_choices = true;