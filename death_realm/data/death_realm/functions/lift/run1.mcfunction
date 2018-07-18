#当电梯在上面时 探测到有玩家走进去
execute if block 1 62 96 run scoreboard players set down Lift 1
execute if score up Lift matches 0 if score down Lift matches 1 run function death_realm:lift/down
execute at @e[tag=Stop] if entity @e[distance=0,tag=DTstop] run scoreboard players set down Lift 0
scoreboard players set down Lift 0

#当电梯在下面时 探测到有玩家走进去
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 if entity @a[dx=2,dy=2,dz=2,gamemode=adventure,team=Hider] run scoreboard players set up Lift 1
execute if score down Lift matches 0 if score up Lift matches 1 run function death_realm:lift/up
execute at @e[tag=stop] if entity @e[distance=0,tag=DTstop] run data merge @e[tag=DT1] {NoGravity:1b}
execute at @e[tag=stop] if entity @e[distance=0,tag=DTstop] run 

