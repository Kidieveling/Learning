active = false
text = ""
choices = []
choice_index = 0
input_cooldown = 0

show = function(_text, _choices) {
    text = _text
    choices = _choices
    choice_index = 0
    active = true
};

hide = function() {
    active = false
    text = ""
    choices = []
    choice_index = 0
    input_cooldown = 2
}
