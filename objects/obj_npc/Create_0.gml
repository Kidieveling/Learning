depth = 25
npc_name = "UPDATE"
npc_text = "CREATION CODE"
dialogue_text = npc_name + ": " + npc_text
npc_choices = [
    {
        text: "Set this NPC up.",
        action: function() {
            with (obj_dialogue) {
                show("This NPC still needs custom creation code.", [])
            }
        }
    },
    {
        text: "Goodbye.",
        action: function() {
            with (obj_dialogue) {
                hide()
            }
        }
    }
];


interact = function(_player) {
    with (obj_dialogue) {
        show(other.dialogue_text, other.npc_choices)
    }
};

get_context_options = function(_player) {
    var target = id

    return [
        {
            text: "Talk-to " + npc_name,
            action: function() {
                with (target) {
                    interact(_player)
                }
            }
        },
        {
            text: "Examine",
            action: function() {
                with (obj_dialogue) {
                    show("This is " + string(target.npc_name) + ".", [])
                }
            }
        }
    ]
}
