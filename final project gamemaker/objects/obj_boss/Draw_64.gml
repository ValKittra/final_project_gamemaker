var _dx = 1023;
var _dy = 13;
var _barw = 256;
var _barh = 64;

draw_set_font(font_bar);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(health_bar, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(health_bar, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP");



draw_set_font(font_bar); // or any font you want
draw_set_color(c_white);



draw_text(1232, 59, "boss dmg " + string(obj_boss.damage));