sprite_index = spr_woodcutting_trainer;
npc_name = "Woodcutting Trainer";
npc_text = "Want to learn about woodcutting?";
dialogue_text = npc_name + ": " + npc_text;

npc_choices = [
    {
        text: "Can you teach me?",
        action: function() {
            with (obj_dialogue) {
                show("Woodcutting Trainer: Start by finding a normal tree. Later, better trees will need higher woodcutting levels.", []);
            }
        }
    },
    {
        text: "Can I have an axe?",
        action: function() {
            with (obj_dialogue) {
                show("Woodcutting Trainer: Soon I'll give you a starter axe. For now, this is where that reward will happen.", []);
            }
        }
    },
    {
        text: "Goodbye.",
        action: function() {
            with (obj_dialogue) {
                hide();
            }
        }
    }
];
