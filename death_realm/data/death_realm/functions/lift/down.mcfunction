execute as @e[type=armor_stand,tag=DT1] at @s run tp @s ~ ~-0.075 ~
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 run tag @a[team=Hider,dx=2,dy=2,dz=2,gamemode=adventure] add usingLift
setblock 4 42 96 minecraft:air replace