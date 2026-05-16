sprite_index = spr_npc_tut
npc_name = "Player Tutor"
npc_text = "Looking for the woodcutting trainer?"
dialogue_text = npc_name + ": " + npc_text

npc_choices = [
    {
        text: "Where is he?",
        action: function() {
            with (obj_dialogue) {
                show("Player Tutor: He is northeast of here.", [])
            }
        }
    },
    {
        text: "What should I do first?",
        action: function() {
            with (obj_dialogue) {
                show("Player Tutor: Talk to the woodcutting trainer and ask for help.", [])
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

