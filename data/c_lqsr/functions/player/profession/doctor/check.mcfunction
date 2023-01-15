execute if data storage c_lqsr:status {Professions:{Doctor:{alreadyChecked:1b}}} run tellraw @s {"text": "既に役職を選択しています","color": "red"}
execute if data storage c_lqsr:status {Professions:{Doctor:{alreadyChecked:1b}}} run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if predicate c_lqsr:is_not_checked_profession run function c_lqsr:player/profession/doctor/check_success