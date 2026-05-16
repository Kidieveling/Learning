var npc = instance_nearest(x, y, obj_npc);

if (npc != noone && point_distance(x, y, npc.x, npc.y) < 64) {
    draw_set_color(c_white);
    draw_text(24, 24, "Press E to talk");
}

if (talk_text != "") {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    draw_set_color(c_black);
    draw_rectangle(32, gui_h - 120, gui_w - 32, gui_h - 32, false);

    draw_set_color(c_white);
    draw_text(48, gui_h - 96, talk_text);
}
