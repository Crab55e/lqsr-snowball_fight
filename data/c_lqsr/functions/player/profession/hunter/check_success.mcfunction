execute if data storage c_lqsr:status {Professions:{Hunter:{alreadyChecked:1b}}} run tellraw @s {"text": "該当の役職は既に使用されています","color": "red"}
execute if data storage c_lqsr:status {Professions:{Hunter:{alreadyChecked:1b}}} run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if data storage c_lqsr:status {Professions:{Hunter:{alreadyChecked:0b}}} run tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@s","color": "#ff66ff"},"が職業、",{"text": "ハンター","color": "yellow"},{"text": "になりました","color": "#ff66ff"}]
execute if data storage c_lqsr:status {Professions:{Hunter:{alreadyChecked:0b}}} run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
execute if data storage c_lqsr:status {Professions:{Hunter:{alreadyChecked:0b}}} run tag @s add lq.sbfight.profession.hunter
data modify storage c_lqsr:status Professions.Hunter.alreadyChecked set value true