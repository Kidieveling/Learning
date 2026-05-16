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

if (mouse_check_button_pressed(mb_right)) {
    if (instance_exists(obj_context_menu)) {
        with (obj_context_menu) {
            instance_destroy()
        }
    }

    var clicked = collision_point(mouse_x, mouse_y, obj_tree_node, false, true)

    if (clicked == noone) {
        clicked = collision_point(mouse_x, mouse_y, obj_npc, false, true)
    }

    if (clicked != noone && variable_instance_exists(clicked, "get_context_options")) {
        var menu = instance_create_layer(0, 0, "Instances", obj_context_menu)
        menu.menu_x = device_mouse_x_to_gui(0)
        menu.menu_y = device_mouse_y_to_gui(0)
        menu.options = clicked.get_context_options(id)
    }
}

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

var tree = instance_nearest(x, y, obj_tree_node)

if (tree != noone) {
    var near_tree = point_distance(x, y, tree.x, tree.y) < 80

    if (near_tree && keyboard_check_pressed(ord("E"))) {
        with (tree) {
            interact(other)
        }
    }
}
