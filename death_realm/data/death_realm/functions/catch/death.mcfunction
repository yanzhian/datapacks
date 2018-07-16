#scoreboard players remove @a[score_Death_min=3] Dh 3
#execute @a[score_Dh_min=20] ~ ~ ~ /particle minecraft:smoke ~ ~1 ~ 0.001 0.001 0.001 0.2 100
#execute @a[score_Dh=20,score_Dh_min=17] ~ ~ ~ /playsound minecraft:entity.wither.death voice @a
tag @s remove dying
particle block redstone_block ~ ~0.5 ~ 0.5 0.1 0.5 1 40 force @a
playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~ 1 2
execute as @s run say 1