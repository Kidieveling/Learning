var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

x += move_x * move_speed;
y += move_y * move_speed;

var npc = instance_nearest(x, y, obj_npc);

if (npc != noone) {
    var near_npc = point_distance(x, y, npc.x, npc.y) < 64;

    if (near_npc && keyboard_check_pressed(ord("E"))) {
        talk_text = "Hello, traveler!";
        talk_timer = room_speed * 3;
    }
}

if (talk_timer > 0) {
    talk_timer -= 1;
} else {
    talk_text = "";
}

