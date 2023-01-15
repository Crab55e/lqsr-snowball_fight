data merge storage c_lqsr:status {Playing:false,Players:{Red:0,Blue:0,Total:0},Professions:{Doctor:{alreadyChecked:false,PlayerMCID:"None"},Engineer:{alreadyChecked:false,PlayerMCID:"None"},Soldier:{alreadyChecked:false,PlayerMCID:"None"},Crafter:{alreadyChecked:false,PlayerMCID:"None"},Hunter:{alreadyChecked:false,PlayerMCID:"None"},Runner:{alreadyChecked:false,PlayerMCID:"None"}}}
scoreboard players reset #lq.sbfight.time lq.sbfight.time
kill @e[type=snow_golem,tag=lq.sbfight.core.main]

tag @a[tag=lq.sbfight.player] remove lq.sbfight.player.blue
tag @a[tag=lq.sbfight.player] remove lq.sbfight.player.red
tag @a[tag=lq.sbfight.player] remove lq.sbfight.profession.crafter
tag @a[tag=lq.sbfight.player] remove lq.sbfight.profession.doctor
tag @a[tag=lq.sbfight.player] remove lq.sbfight.profession.engineer
tag @a[tag=lq.sbfight.player] remove lq.sbfight.profession.hunter
tag @a[tag=lq.sbfight.player] remove lq.sbfight.profession.runner
tag @a[tag=lq.sbfight.player] remove lq.sbfight.profession.soldier