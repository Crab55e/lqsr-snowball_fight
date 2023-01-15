tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@s","color": "yellow"},"が雪合戦を退出しました"]
execute in minecraft:overworld run tp @s 0 72 0 0 0
clear @s
gamemode survival @s

execute if entity @s[tag=lq.sbfight.player.blue] store result storage c_lqsr:status Players.Blue int 1 if entity @a[tag=lq.sbfight.player.blue]
execute if entity @s[tag=lq.sbfight.player.red] store result storage c_lqsr:status Players.Red int 1 if entity @a[tag=lq.sbfight.player.red]

execute if entity @s[tag=lq.sbfight.profession.crafter] run data merge storage c_lqsr:status {Professions:{Crafter:{alreadyChecked:false}}}
execute if entity @s[tag=lq.sbfight.profession.doctor] run data merge storage c_lqsr:status {Professions:{Doctor:{alreadyChecked:false}}}
execute if entity @s[tag=lq.sbfight.profession.engineer] run data merge storage c_lqsr:status {Professions:{Engineer:{alreadyChecked:false}}}
execute if entity @s[tag=lq.sbfight.profession.hunter] run data merge storage c_lqsr:status {Professions:{Hunter:{alreadyChecked:false}}}
execute if entity @s[tag=lq.sbfight.profession.runner] run data merge storage c_lqsr:status {Professions:{Runner:{alreadyChecked:false}}}
execute if entity @s[tag=lq.sbfight.profession.soldier] run data merge storage c_lqsr:status {Professions:{Soldier:{alreadyChecked:false}}}

tag @s remove lq.sbfight.player
tag @s remove lq.sbfight.player.blue
tag @s remove lq.sbfight.player.red
tag @s remove lq.sbfight.profession.crafter
tag @s remove lq.sbfight.profession.doctor
tag @s remove lq.sbfight.profession.engineer
tag @s remove lq.sbfight.profession.hunter
tag @s remove lq.sbfight.profession.runner
tag @s remove lq.sbfight.profession.soldier

attribute @s generic.movement_speed base set 0.1
attribute @s generic.max_health base set 20.0

playsound block.wooden_door.close master @a[predicate=c_lqsr:is_in_stage] ~ ~ ~ 1 1 1

execute store result storage c_lqsr:status Players.Total int 1 if entity @a[predicate=c_lqsr:is_in_stage,gamemode=!creative,gamemode=!spectator]
execute store result storage c_lqsr:status Players.Blue int 1 if entity @a[tag=lq.sbfight.player.blue]
execute store result storage c_lqsr:status Players.Red int 1 if entity @a[tag=lq.sbfight.player.red]

bossbar set lq.sbfight.core.main.blue.bossbar visible false
bossbar set lq.sbfight.core.main.red.bossbar visible false