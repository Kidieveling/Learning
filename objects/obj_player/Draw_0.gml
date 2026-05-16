draw_self();

var npc = instance_nearest(x, y, obj_npc)

if (npc != noone && point_distance(x, y, npc.x, npc.y) < 80) {
    draw_set_font(fnt_prompt)
    draw_text(x - 48, y - 48, "Press E to talk to " + npc.npc_name)
    draw_set_font(-1)

}
