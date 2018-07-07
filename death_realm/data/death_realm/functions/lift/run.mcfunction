#电梯task
#tag = stop 的as 为up的stop标记as
#tag = Stop 的as 为down的stop标记as
#tag = DTstop 的as 为 电梯中间下面用于标记高度的as
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 if entity @e[type=armor_stand,dx=2,dy=1,dz=2,scores={Ht=1..}] unless entity @a[dx=2,dy=2,dz=2,gamemode=adventure] run function death_realm:lift/down



#电梯门指令 不想新开mcf了
#up   open&close
execute at @e[tag=stop] if entity @e[distance=0,tag=DTstop] run fill 3 61 95 3 63 95 air
execute at @e[tag=stop] unless entity @e[distance=0,tag=DTstop] run fill 3 61 95 3 63 95 iron_bars
#down open&close
execute at @e[tag=Stop] if entity @e[distance=0,tag=DTstop] run fill 3 41 95 3 43 95 air
execute at @e[tag=Stop] unless entity @e[distance=0,tag=DTstop] run fill 3 41 95 3 43 95 iron_bars