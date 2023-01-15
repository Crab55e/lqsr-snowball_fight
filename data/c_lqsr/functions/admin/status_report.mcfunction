tellraw @s {"text": "- クリスマスイベント -\n","color": "yellow"}

tellraw @s ["Playing: ",{"storage":"c_lqsr:status","nbt":"Playing","color": "green"}]
tellraw @s ["Players: 青: ",{"storage":"c_lqsr:status","nbt":"Players.Blue","color": "blue"},", 赤: ",{"storage":"c_lqsr:status","nbt":"Players.Red","color": "red"},", 合計: ",{"storage":"c_lqsr:status","nbt":"Players.Total","color": "green"}]
tellraw @s ["Last Match Status: 勝利チーム: ",{"storage":"c_lqsr:status","nbt":"lastMatchStatus.victoriedTeam","color": "green"}]
tellraw @s "\nProfession:"
tellraw @s ["- Crafter\u0020:\u0020",{"storage":"c_lqsr:status","nbt":"Professions.Crafter.alreadyChecked","color": "green"}]
tellraw @s ["- Doctor\u0020:\u0020",{"storage":"c_lqsr:status","nbt":"Professions.Doctor.alreadyChecked","color": "green"}]
tellraw @s ["- Soldier\u0020:\u0020",{"storage":"c_lqsr:status","nbt":"Professions.Soldier.alreadyChecked","color": "green"}]
tellraw @s ["- Runner\u0020:\u0020",{"storage":"c_lqsr:status","nbt":"Professions.Runner.alreadyChecked","color": "green"}]
tellraw @s ["- Engineer:\u0020",{"storage":"c_lqsr:status","nbt":"Professions.Engineer.alreadyChecked","color": "green"}]
tellraw @s ["- Hunter\u0020\u0020:\u0020",{"storage":"c_lqsr:status","nbt":"Professions.Hunter.alreadyChecked","color": "green"}]
execute if data storage c_lqsr:status {Playing:1b} run tellraw @s ["Time: ",{"score":{"name": "#lq.sbfight.time","objective": "lq.sbfight.time"}},"/24000(tick)"]
tellraw @s {"text": "\n- ステータスレポート -","color": "yellow"}