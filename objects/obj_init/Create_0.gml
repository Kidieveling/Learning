window_set_fullscreen(true)

// add chatbox
if (!instance_exists(obj_dialogue)) {
    instance_create_layer(0, 0, "Instances", obj_dialogue)
}

room_goto(rm_tutorial)
