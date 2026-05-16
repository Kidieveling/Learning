if (instance_exists(obj_dialogue) && obj_dialogue.active) {
    exit
}

if (instance_exists(obj_dialogue) && obj_dialogue.input_cooldown > 0) {
    exit
}


var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"))

x += move_x * move_speed
y += move_y * move_speed

var npc = instance_nearest(x, y, obj_npc)
//interact with npc
if (npc != noone) {
    var near_npc = point_distance(x, y, npc.x, npc.y) < 80

    if (near_npc && keyboard_check_pressed(ord("E"))) {
        with (npc) {
            interact(other)
        }
    }
}

