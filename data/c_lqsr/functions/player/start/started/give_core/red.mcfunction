give @s ghast_spawn_egg{CanPlaceOn:["#c_tfo:all"],display:{Name:'{"text":"赤の拠点設置","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Age:20,Duration:0,Radius:0,Tags:["lq.sbfight.core","lq.sbfight.core.red"]}}
tellraw @a[predicate=c_lqsr:is_in_stage,tag=lq.sbfight.player.red] ["",{"text": "[赤] ","color": "red"},{"selector":"@s"},"が拠点の設置場所を決めます"]