#人为行走时
execute as @a[team=Ghost] at @s run tag @a[distance=..10,team=Hider] add hard
execute as @a[team=Ghost] at @s run tag @a[distance=11..20,team=Hider] add normal
execute as @a[team=Ghost] at @s run tag @a[distance=21..,team=Hider] add peaceful
#在使用摄像头的时候
execute as @a[team=Ghost] at @s run tag @a[distance=..10,tag=sub] add hard
execute as @a[team=Ghost] at @s run tag @a[distance=11..20,tag=sub] add normal
execute as @a[team=Ghost] at @s run tag @a[distance=21..,tag=sub] add peaceful

execute at @e[tag=sub1,tag=hard] run tag @a[tag=Hider1] add hard
execute at @e[tag=sub2,tag=hard] run tag @a[tag=Hider2] add hard
execute at @e[tag=sub3,tag=hard] run tag @a[tag=Hider3] add hard
execute at @e[tag=sub4,tag=hard] run tag @a[tag=Hider4] add hard
execute at @e[tag=sub5,tag=hard] run tag @a[tag=Hider5] add hard
execute at @e[tag=sub6,tag=hard] run tag @a[tag=Hider6] add hard
execute at @e[tag=sub7,tag=hard] run tag @a[tag=Hider7] add hard

execute at @e[tag=sub1,tag=normal] run tag @a[tag=Hider1] add normal
execute at @e[tag=sub2,tag=normal] run tag @a[tag=Hider2] add normal
execute at @e[tag=sub3,tag=normal] run tag @a[tag=Hider3] add normal
execute at @e[tag=sub4,tag=normal] run tag @a[tag=Hider4] add normal
execute at @e[tag=sub5,tag=normal] run tag @a[tag=Hider5] add normal
execute at @e[tag=sub6,tag=normal] run tag @a[tag=Hider6] add normal
execute at @e[tag=sub7,tag=normal] run tag @a[tag=Hider7] add normal

execute at @e[tag=sub1,tag=peaceful] run tag @a[tag=Hider1] add peaceful
execute at @e[tag=sub2,tag=peaceful] run tag @a[tag=Hider2] add peaceful
execute at @e[tag=sub3,tag=peaceful] run tag @a[tag=Hider3] add peaceful
execute at @e[tag=sub4,tag=peaceful] run tag @a[tag=Hider4] add peaceful
execute at @e[tag=sub5,tag=peaceful] run tag @a[tag=Hider5] add peaceful
execute at @e[tag=sub6,tag=peaceful] run tag @a[tag=Hider6] add peaceful
execute at @e[tag=sub7,tag=peaceful] run tag @a[tag=Hider7] add peaceful

#探测鬼魂和人的距离的显示
replaceitem entity @a[tag=peaceful] hotbar.8 minecraft:sugar{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"探测感应:\",\"color\":\"white\",\"bold\":true,\"italic\":false},{\"text\":\"弱\",\"color\":\"green\",\"bold\":true,\"italic\":false}]}"}} 
replaceitem entity @a[tag=normal] hotbar.8 minecraft:stick{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"探测感应:\",\"color\":\"white\",\"bold\":true,\"italic\":false},{\"text\":\"中\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}]}"}} 
replaceitem entity @a[tag=hard] hotbar.8 minecraft:brick{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"探测感应:\",\"color\":\"white\",\"bold\":true,\"italic\":false},{\"text\":\"强\",\"color\":\"red\",\"bold\":true,\"italic\":false}]}"}} 

#重置
tag @a remove hard
tag @a remove normal
tag @a remove peaceful
