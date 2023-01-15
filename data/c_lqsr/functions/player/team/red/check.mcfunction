execute if data storage c_lqsr:status {Players:{Blue:3}} run tellraw @s {"text": "蟹色のチームは満員です","color": "red"}
execute if data storage c_lqsr:status {Players:{Blue:3}} run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute unless predicate c_lqsr:is_not_joined_team run tellraw @s {"text": "既にチームに所属しています","color": "red"}
execute unless predicate c_lqsr:is_not_joined_team run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if predicate c_lqsr:is_not_joined_team unless data storage c_lqsr:status {Players:{Red:3}} run function c_lqsr:player/team/red/success