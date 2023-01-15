tag @s add lq.sbfight.player.red
execute store result storage c_lqsr:status Players.Red int 1 if entity @a[tag=lq.sbfight.player.red]
playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@s","color": "red"},"が赤チームに入りました"]