window_set_fullscreen(true)

global.inventory = []

// add chatbox
if (!instance_exists(obj_dialogue)) {
    instance_create_layer(0, 0, "Instances", obj_dialogue)
}

// add inventory GUI
if (!instance_exists(obj_inventory)) {
    instance_create_layer(0, 0, "Instances", obj_inventory)
}


room_goto(rm_tutorial)
