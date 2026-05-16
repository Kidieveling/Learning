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



draw_set_color(c_black)
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false)

draw_set_color(c_white)
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true)

draw_text(box_x + 16, box_y + 12, "Inventory")

//invntory slots
for (var i = 0; i < total_slots; i++) {
    var slot_col = i mod slots_per_row
    var slot_row = i div slots_per_row

    var slot_x = box_x + 16 + slot_col * (slot_size + slot_gap)
    var slot_y = box_y + 40 + slot_row * (slot_size + slot_gap)

    draw_set_color(c_dkgray)
    draw_rectangle(slot_x, slot_y, slot_x + slot_size, slot_y + slot_size, false)

    draw_set_color(c_white)
    draw_rectangle(slot_x, slot_y, slot_x + slot_size, slot_y + slot_size, true)

    if (global.selected_inventory_slot == i) { 
        draw_set_color(c_yellow)
        draw_rectangle(slot_x, slot_y, slot_x + slot_size, slot_y + slot_size, true)
    }    
    
    if (i < array_length(global.inventory)) {
        var item = global.inventory[i]
    
        var sprite_w = sprite_get_width(item.sprite)
        var sprite_h = sprite_get_height(item.sprite)
    
        var padding = 6
        var max_size = slot_size - padding * 2
    
        var scale_x = max_size / sprite_w
        var scale_y = max_size / sprite_h
        var scale = min(scale_x, scale_y)
    
        var draw_w = sprite_w * scale
        var draw_h = sprite_h * scale
    
        var draw_x = slot_x + (slot_size - draw_w) / 2
        var draw_y = slot_y + (slot_size - draw_h) / 2
    
        draw_sprite_ext(item.sprite, 0, draw_x, draw_y, scale, scale, 0, c_white, 1)

        if (item.amount > 1) {
            draw_text(slot_x + 24, slot_y + 22, string(item.amount)) 
        }
    }    
}