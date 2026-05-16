if (active) {
    var gui_w = display_get_gui_width()
    var gui_h = display_get_gui_height()

    draw_set_color(c_black)
    draw_rectangle(32, gui_h - 150, gui_w - 32, gui_h - 32, false)

    draw_set_color(c_white)
    draw_text(56, gui_h - 96, text)
}
