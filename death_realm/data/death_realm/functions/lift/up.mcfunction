data merge entity @e[type=armor_stand,tag=DT1] {NoGravity:0b}
execute at @e[tag=DTpl] positioned ~-1 ~ ~-1 run effect give @a[team=Hider,dx=2,dy=2,dz=2,gamemode=adventure] minecraft:levitation 1 1 true
effect give @e[tag=DT1] minecraft:levitation 1 1 true
setblock 4 62 96 minecraft:air replace