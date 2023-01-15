tellraw @a[predicate=c_lqsr:is_in_stage] [{"selector":"@p"},"がゲームを開始しようとしています..."]

execute unless data storage c_lqsr:status {Playing:0b,Players:{Blue:3,Red:3,Total:6},Professions:{Crafter:{alreadyChecked:1b},Doctor:{alreadyChecked:1b},Soldier:{alreadyChecked:1b},Runner:{alreadyChecked:1b},Engineer:{alreadyChecked:1b},Hunter:{alreadyChecked:1b}}} run playsound block.note_block.bass master @a[predicate=c_lqsr:is_in_stage] ~ ~ ~ 1 1 1

execute if data storage c_lqsr:status {Playing:1b} run tellraw @a[predicate=c_lqsr:is_in_stage] {"text": "既にスタートしています","color": "red"} 
execute unless data storage c_lqsr:status {Players:{Total:6}} run tellraw @a[predicate=c_lqsr:is_in_stage] {"text": "人数が足りません","color": "red"}
execute unless data storage c_lqsr:status {Players:{Blue:3,Red:3}} if entity @a[predicate=c_lqsr:is_not_joined_team,tag=lq.sbfight.player] run tellraw @a[predicate=c_lqsr:is_in_stage] [{"text": "チームに所属していないプレイヤーが居ます\n- ","color": "red"},{"selector":"@a[predicate=c_lqsr:is_not_joined_team,tag=lq.sbfight.player]"}]
execute unless data storage c_lqsr:status {Professions:{Crafter:{alreadyChecked:1b},Doctor:{alreadyChecked:1b},Soldier:{alreadyChecked:1b},Runner:{alreadyChecked:1b},Engineer:{alreadyChecked:1b},Hunter:{alreadyChecked:1b}}} if entity @a[predicate=c_lqsr:is_not_checked_profession,tag=lq.sbfight.player] run tellraw @a[predicate=c_lqsr:is_in_stage] [{"text": "役職を選択していないプレイヤーが居ます\n- ","color": "red"},{"selector":"@a[predicate=c_lqsr:is_not_checked_profession,tag=lq.sbfight.player]"}]

execute if data storage c_lqsr:status {Playing:0b,Players:{Blue:3,Red:3,Total:6},Professions:{Crafter:{alreadyChecked:1b},Doctor:{alreadyChecked:1b},Soldier:{alreadyChecked:1b},Runner:{alreadyChecked:1b},Engineer:{alreadyChecked:1b},Hunter:{alreadyChecked:1b}}} run function c_lqsr:player/start/success
