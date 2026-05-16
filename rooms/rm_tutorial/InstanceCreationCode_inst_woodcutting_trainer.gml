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
            array_push(global.inventory, {
                name: "Bronze axe",
                amount: 1,
                sprite: spr_item_bronze_axe
            });
      
              with (obj_dialogue) {
                  show("Woodcutting Trainer: Here, take this bronze axe.", []);
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
