particle explosion_emitter
effect give @s instant_damage 1 0 true
playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 1 1.75 1
scoreboard players set @a[tag=lq.sbfight.profession.soldier] lq.sbfight.soldier.charge 0