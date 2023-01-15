# main | every tick
execute as @a at @s run function c_lqsr:player/
execute if entity @e[type=item,predicate=c_lqsr:is_in_stage,limit=1] run kill @e[predicate=c_lqsr:is_in_stage,type=item,nbt={Item:{tag:{lq.sbfight:1b}}}]

execute if data storage c_lqsr:status {Playing:1b} run function c_lqsr:systems/playing/
execute if entity @e[type=area_effect_cloud,tag=lq.temp.timeup_delay,limit=1] run execute as @a[predicate=c_lqsr:is_in_stage] at @s run function c_lqsr:leave
