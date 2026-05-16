var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();

var box_w = 220;
var box_h = 160;

var box_x = screen_w - box_w - 32;
var box_y = screen_h - box_h - 32;


draw_set_color(c_black)
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false)

draw_set_color(c_white)
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true)

draw_text(box_x + 16, box_y + 12, "Inventory");

for (var i = 0; i < array_length(global.inventory); i++) {
    var item = global.inventory[i];

    var item_x = box_x + 16;
    var item_y = box_y + 40 + i * 32;

    draw_sprite(item.sprite, 0, item_x, item_y);
}

