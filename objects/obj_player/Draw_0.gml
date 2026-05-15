draw_set_alpha(1);

// Body
draw_set_color(make_color_rgb(63, 116, 191));
draw_rectangle(x - 14, y - 24, x + 14, y + 12, false);

// Head
draw_set_color(make_color_rgb(238, 196, 154));
draw_circle(x, y - 34, 12, false);

// Facing marker
draw_set_color(c_white);
draw_circle(x + facing_x * 9, y - 34 + facing_y * 9, 3, false);

// Health bar
var bar_width = 42;
var health_percent = hp / max_hp;

draw_set_color(c_black);
draw_rectangle(x - bar_width / 2 - 1, y - 58, x + bar_width / 2 + 1, y - 51, false);

draw_set_color(c_red);
draw_rectangle(x - bar_width / 2, y - 57, x + bar_width / 2, y - 52, false);

draw_set_color(c_lime);
draw_rectangle(x - bar_width / 2, y - 57, x - bar_width / 2 + bar_width * health_percent, y - 52, false);

draw_set_color(c_white);
draw_text(24, 24, "RPG Lesson 1: Move with WASD or arrow keys");
