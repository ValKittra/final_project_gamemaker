if (show_choices)
{
    var bx = 350;
    var bw = 500;
    var bh = 50;
    
    var mx = mouse_x;
    var my = mouse_y;

    // Button 1
    var hover1 = (mx > bx && mx < bx + bw && my > 150 && my < 150 + bh);
    
    if (hover1)
    {
        draw_set_color(c_yellow);
        draw_rectangle(bx, 150, bx + bw, 200 + bh, false);
    }
    else {
        draw_set_color(c_white);
        draw_rectangle(bx, 150, bx + bw, 200 + bh, false);
    }
    
    
    draw_set_color(c_black);
    draw_text(bx + 50, 190, choice1);
    draw_set_color(c_white);

    // Button 2
    var hover2 = (mx > bx && mx < bx + bw && my > 350 && my < 350 + bh);
    
    if (hover2)
    {
        draw_set_color(c_yellow);
        draw_rectangle(bx, 350, bx + bw, 400 + bh, false);
    }else{
        draw_set_color(c_white);
        draw_rectangle(bx, 350, bx + bw, 400 + bh, false);
    }
    
    draw_set_color(c_black);
    draw_text(bx + 50, 400, choice2);
    draw_set_color(c_white);

    // Button 3
    var hover3 = (mx > bx && mx < bx + bw && my > 550 && my < 550 + bh);
    
    if (hover3)
    {
        draw_set_color(c_yellow);
        draw_rectangle(bx, 550, bx + bw, 600 + bh, false);
    }else {
    	draw_set_color(c_white);
        draw_rectangle(bx, 550, bx + bw, 600 + bh, false);
    }
    draw_set_color(c_black);
    draw_text(bx + 50, 580, choice3);
}
else if (state == "result")
{
    draw_set_color(c_white);
    draw_rectangle(350, 200, 900, 500, false);

    draw_set_color(c_black);
    draw_text(380, 240, "Your dice roll: " + string(roll));
    draw_text(380, 300, roll_text);
}