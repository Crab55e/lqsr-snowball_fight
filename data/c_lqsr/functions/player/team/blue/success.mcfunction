tag @s add lq.sbfight.player.blue
execute store result storage c_lqsr:status Players.Blue int 1 if entity @a[tag=lq.sbfight.player.blue]
playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@s","color": "blue"},"が青チームに入りました"]