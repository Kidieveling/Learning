var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

move_x += keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_y += keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (move_x != 0 || move_y != 0) {
    var move_length = point_distance(0, 0, move_x, move_y);
    move_x /= move_length;
    move_y /= move_length;

    facing_x = move_x;
    facing_y = move_y;
}

x += move_x * move_speed;
y += move_y * move_speed;

x = clamp(x, 24, room_width - 24);
y = clamp(y, 32, room_height - 16);
