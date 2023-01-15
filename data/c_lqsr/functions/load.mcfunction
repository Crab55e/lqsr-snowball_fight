scoreboard objectives add lq.sbfight.time dummy
scoreboard objectives add lq.sbfight.snowball.used minecraft.used:minecraft.snowball
scoreboard objectives add lq.sbfight.core.drop_cooltime dummy
scoreboard objectives add lq.sbfight.temp dummy
scoreboard objectives add lq.sbfight.snow_block.age dummy
scoreboard objectives add lq.sbfight.soldier.charge dummy
scoreboard objectives add lq.sbfight.runner.sneak minecraft.custom:minecraft.sneak_time

bossbar add lq.sbfight.core.main.blue.bossbar {"text":"青色スノーの体力","color":"blue"}
bossbar add lq.sbfight.core.main.red.bossbar {"text":"赤色スノーの体力","color":"red"}

bossbar set lq.sbfight.core.main.blue.bossbar max 500
bossbar set lq.sbfight.core.main.red.bossbar max 500
bossbar set lq.sbfight.core.main.blue.bossbar color blue
bossbar set lq.sbfight.core.main.red.bossbar color red
bossbar set lq.sbfight.core.main.blue.bossbar players @a[predicate=c_lqsr:is_in_stage]
bossbar set lq.sbfight.core.main.red.bossbar players @a[predicate=c_lqsr:is_in_stage]