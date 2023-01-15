setblock ~ ~ ~ barrier
particle electric_spark ~ ~ ~ 0 0 0 .5 10 force
playsound entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 1 2 1
playsound block.iron_door.open master @a[distance=..10] ~ ~ ~ 1 1.5 1
tag @s add lq.sbfight.profession.crafter.trap.main
tag @s remove lq.sbfight.profession.crafter.trap.place