execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air
kill @s
particle snowflake ~ ~ ~ 0 0 0 .05 30 force
playsound block.powder_snow.break master @a[distance=..10] ~ ~ ~ 1 1 1
execute if predicate c_tfo:random/0.5 run summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{Count:1b,id:"minecraft:glow_item_frame",tag:{CanPlaceOn:["#c_tfo:all"],CustomModelData:333,display:{Name:'{"text":"雪の結晶ブロック","italic":false,"color":"#44ffff"}'},EntityTag:{Invulnerable:1,Fixed:1,Tags:["lq.sbfight.profession.engineer.snow_block","lq.sbfight.profession.engineer.snow_block.place"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:333}},Invisible:1,Silent:1}}}}