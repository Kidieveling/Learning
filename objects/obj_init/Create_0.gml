window_set_fullscreen(true)

global.inventory = []
global.woodcutting_level = 1
global.woodcutting_xp = 0
// highlight slot
global.selected_inventory_slot = -1

// add chatbox
if (!instance_exists(obj_dialogue)) {
    instance_create_layer(0, 0, "Instances", obj_dialogue)
}

// add inventory GUI
if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "Instances", obj_inventory)
}


room_goto(rm_tutorial)
