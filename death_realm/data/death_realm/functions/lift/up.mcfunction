#execute as @e[type=armor_stand,tag=DT1] at @s run tp @s ~ ~0.075 ~ 
effect give  @e[type=armor_stand,tag=DT1] minecraft:levitation 1
execute as @e[type=armor_stand,tag=DT1] at @s run tp @e[distance=..3,tag=!DTs,type=!armor_stand] ~ ~1.25 ~
