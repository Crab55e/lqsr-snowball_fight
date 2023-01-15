tellraw @a[predicate=c_lqsr:is_in_stage] {"text": "雪合戦がスタートします...","color": "yellow"}
execute in mets:sub_dimension run tp @a[predicate=c_lqsr:is_in_stage,gamemode=!creative,gamemode=!spectator] 78.5 112.0 29.5 -180 0

effect give @a[predicate=c_lqsr:is_in_stage] speed 15 9 true
effect give @a[predicate=c_lqsr:is_in_stage] resistance 16 4 true

fill 79 112 32 77 115 32 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true] keep

execute as @r[tag=lq.sbfight.player.blue] at @s run function c_lqsr:player/start/started/give_core/blue
execute as @r[tag=lq.sbfight.player.red] at @s run function c_lqsr:player/start/started/give_core/red

data merge storage c_lqsr:status {Playing:1b}