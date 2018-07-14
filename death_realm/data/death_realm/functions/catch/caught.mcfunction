#被抓执行
effect give @a[tag=caught] minecraft:jump_boost 10 240 true
effect give @a[tag=caught] minecraft:slowness 3 10 true
effect give @a[team=Ghost] minecraft:jump_boost 10 240 true
effect give @a[team=Ghost] minecraft:slowness 3 10 true
scoreboard players set @a[tag=caught] Death 180
clear @a[tag=caught]
team join Peace @a[tag=caught]
tag @a[tag=caught] remove caught

#死亡动画
scoreboard players remove @a[score_Death_min=3] Dh 3
execute @a[score_Dh_min=20] ~ ~ ~ /particle minecraft:smoke ~ ~1 ~ 0.001 0.001 0.001 0.2 100
execute @a[score_Dh=20,score_Dh_min=17] ~ ~ ~ /playsound minecraft:entity.wither.death voice @a 
