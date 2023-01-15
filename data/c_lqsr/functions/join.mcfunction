execute in mets:sub_dimension run tp @s 78.5 112 18.50 0 0
clear @s
gamemode adventure @s
tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@s","color": "yellow"},"が雪合戦に参加しました"]
tag @s add lq.sbfight.player
particle totem_of_undying ~ ~ ~ 0 30 0 0.1 100 force
playsound block.wooden_door.open master @a[predicate=c_lqsr:is_in_stage] ~ ~ ~ 1 1 1
execute store result storage c_lqsr:status Players.Total int 1 if entity @a[predicate=c_lqsr:is_in_stage,gamemode=!spectator,gamemode=!creative]