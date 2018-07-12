#人类的jio印
execute as @a[team=Hider,scores={Sprint=1..}] at @s run particle dripping_lava ~ ~0.2 ~ 0 0 0 0.01 13 force @a[team=Ghost]
#人类看Ghost的特效
execute as @a[team=Ghost,scores={Sprint=1..}] at @s run particle minecraft:dust 50 20 60 1.5 ~ ~1.5 ~ 0.125 0.325 0.125 0.2 35 force @a[distance=..10,team=Hider]
#幽灵看Ghost的特效
execute as @a[team=Ghost,scores={Sprint=1..}] at @s run particle minecraft:dust 50 20 60 1.5 ~ ~1.5 ~ 0.125 0.325 0.125 0.2 35 force @a[team=Peace]
