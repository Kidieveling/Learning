if (mouse_check_button_pressed(mb_left)) {
    var mouse_x_gui = device_mouse_x_to_gui(0)
    var mouse_y_gui = device_mouse_y_to_gui(0)

    var screen_w = display_get_gui_width()
    var screen_h = display_get_gui_height()

    var box_w = 220
    var box_h = 160

    var box_x = screen_w - box_w - 32
    var box_y = screen_h - box_h - 32

    var slot_size = 40
    var slot_gap = 6
    var slots_per_row = 4
    var total_slots = 12

    for (var i = 0; i < total_slots; i++) {
        var slot_col = i mod slots_per_row
        var slot_row = i div slots_per_row

        var slot_x = box_x + 16 + slot_col * (slot_size + slot_gap)
        var slot_y = box_y + 40 + slot_row * (slot_size + slot_gap)

        var inside_slot =
            mouse_x_gui >= slot_x &&
            mouse_x_gui <= slot_x + slot_size &&
            mouse_y_gui >= slot_y &&
            mouse_y_gui <= slot_y + slot_size

        if (inside_slot) {
            global.selected_inventory_slot = i

            if (i < array_length(global.inventory)) {
                var item = global.inventory[i]

                with (obj_dialogue) {
                    show("Selected: " + item.name, [])
                }
            }

            break
        }
    }
}
