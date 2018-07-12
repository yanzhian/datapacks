#电梯task
#tag = stop 的as 为up的stop标记as
#tag = Stop 的as 为down的stop标记as
#tag = DTstop 的as 为 电梯中间下面用于标记高度的as

#电梯是否上升?  有玩家不上升 有人偶不上升  顶层了不上升
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 if entity @e[type=armor_stand,dx=2,dy=1,dz=2,tag=Substitute] run scoreboard players set up Lift 0
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 if entity @a[dx=2,dy=2,dz=2,gamemode=adventure] run scoreboard players set up Lift 0
execute at @e[tag=stop] if entity @e[distance=0,tag=DTstop] run scoreboard players set up Lift 0
execute if score up Lift matches 1 run function death_realm:lift/up

#电梯是否下降?  有玩家下降 底层了不下降 有人偶不动     
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 if entity @a[dx=2,dy=2,dz=2,gamemode=adventure] run scoreboard players set down Lift 1
execute at @e[tag=Stop] if entity @e[distance=0,tag=DTstop] run scoreboard players set down Lift 0
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 if entity @e[type=armor_stand,dx=2,dy=1,dz=2,tag=Substitute] run scoreboard players set down Lift 0
execute if score down Lift matches 1 run function death_realm:lift/down
scoreboard players set up Lift 1
scoreboard players set down Lift 0


execute at @e[type=armor_stand,tag=Stop] positioned ~ ~-0.5 ~ if entity @e[type=armor_stand,distance=1,tag=DTstop] run scoreboard players set down Lift 0

#电梯门指令 不想新开mcf了
#up   open&close
execute at @e[tag=stop] if entity @e[distance=0,tag=DTstop] run fill 3 61 95 3 63 95 air destroy
execute at @e[tag=stop] unless entity @e[distance=0,tag=DTstop] if block 3 61 95 air run fill 3 61 95 3 63 95 iron_bars
#down open&close
execute at @e[tag=Stop] if entity @e[distance=0,tag=DTstop] run fill 3 41 95 3 43 95 air destroy
execute at @e[tag=Stop] unless entity @e[distance=0,tag=DTstop] if block 3 41 95 air run fill 3 41 95 3 43 95 iron_bars