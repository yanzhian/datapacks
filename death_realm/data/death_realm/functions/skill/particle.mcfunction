#using tag:showGhostEffect to show ghost effect

#玩家靠近鬼时显示
tag @a[distance=..10,team=Hider] add showGhostEffect
#鬼跑的时候玩家和阵亡的玩家显示
execute if entity @a[team=Ghost,scores={Sprint=1..}] run tag @a add showGhostEffect

#人类的jio印
execute as @a[team=Hider,scores={Sprint=1..}] at @s run particle dripping_lava ~ ~0.2 ~ 0 0 0 0.01 13 force @a[team=Ghost]
#人类&幽灵看Ghost的特效
execute at @a[team=Ghost] run particle minecraft:dust 50 20 60 1.5 ~ ~1.5 ~ 0.125 0.325 0.125 0.2 35 force @a[tag=showGhostEffect]

#reset the var
scoreboard players set @a[nbt={OnGround:1b}] Sprint 0
tag @a remove showGhostEffect