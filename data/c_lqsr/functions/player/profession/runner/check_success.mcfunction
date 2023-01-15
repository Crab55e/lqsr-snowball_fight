execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:1b}}} run tellraw @s {"text": "該当の役職は既に使用されています","color": "red"}
execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:1b}}} run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:0b}}} run tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@s","color": "#ff66ff"},"が職業、",{"text": "ランナー","color": "yellow"},{"text": "になりました","color": "#ff66ff"}]
execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:0b}}} run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:0b}}} run attribute @s minecraft:generic.movement_speed base set .175
execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:0b}}} run attribute @s generic.max_health base set 14
execute if data storage c_lqsr:status {Professions:{Runner:{alreadyChecked:0b}}} run tag @s add lq.sbfight.profession.runner
data modify storage c_lqsr:status Professions.Runner.alreadyChecked set value true