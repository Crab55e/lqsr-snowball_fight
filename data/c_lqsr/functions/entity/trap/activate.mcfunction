effect give @a[distance=..2] blindness 2 0 true
effect give @a[distance=..2] slowness 5 3 true
effect give @a[distance=..2] wither 1 1 true
particle electric_spark ~ ~ ~ 0 0 0 4 300 force
playsound block.iron_door.open master @a[distance=..15] ~ ~ ~ 1 1 1
playsound block.iron_door.open master @a[distance=..15] ~ ~ ~ 1 1.1 1
playsound block.iron_door.open master @a[distance=..15] ~ ~ ~ 1 1.2 1
tellraw @a[predicate=c_lqsr:is_in_stage] ["[雪合戦]: ",{"selector":"@a[distance=..15]"},"がクラフターのトラップを踏みました"]
kill @s