# RPG Lesson 1: Player Movement

This project now has one object: `obj_player`.

In GameMaker, an object is a thing that can exist in a room. A player, wall, enemy, treasure chest, and NPC will usually each be an object.

## The three events we used

- Create: runs once when the object appears. We set starting values here, like movement speed and health.
- Step: runs every frame. We read keyboard input here and move the player.
- Draw: runs every frame when GameMaker draws the screen. Since we do not have art yet, we draw a simple player with shapes.

## The important idea

The player has variables:

```gml
move_speed = 4;
max_hp = 20;
hp = max_hp;
```

A variable is a named box that holds information. RPGs are full of variables: health, gold, level, attack power, quest progress, and inventory items.

## Your first experiment

Open `objects/obj_player/Create_0.gml` and change:

```gml
move_speed = 4;
```

Try `2`, then try `8`, and run the game after each change. You are changing how fast the player moves.

## Next lesson

Next we should add walls and collision, because RPG worlds need boundaries. After that we can build a small town map.
