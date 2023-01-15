setblock ~ ~ ~ barrier
particle electric_spark ~ ~ ~ 0 0 0 .5 10 force
playsound entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 1 2 1
playsound block.stone.place master @a[distance=..10] ~ ~ ~ 1 1 1
tag @s add lq.sbfight.profession.engineer.snow_block.main
tag @s remove lq.sbfight.profession.engineer.snow_block.place