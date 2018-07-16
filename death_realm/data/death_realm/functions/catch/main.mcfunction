execute at @a[team=Ghost] run tag @a[team=Hider,distance=..1] add caught
execute as @a[tag=caught] run function death_realm:catch/caught
execute as @a[tag=dying,scores={Death=1..}] run scoreboard players remove @s Death 1
execute at @a[tag=dying] run particle portal ~ ~2 ~ 0.12 0.12 0.12 1 20 force @a
execute as @a[nbt={OnGround:1b},tag=dying,scores={Death=0}] at @s run function death_realm:catch/death