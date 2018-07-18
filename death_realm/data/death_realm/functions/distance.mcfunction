#探测鬼魂和人的距离的显示
/replaceitem entity @a[tag=security] hotbar.8 minecraft:sugar{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"探测感应:\",\"color\":\"white\",\"bold\":true,\"italic\":false},{\"text\":\"弱\",\"color\":\"green\",\"bold\":true,\"italic\":false}]}"}} 
/replaceitem entity @a[tag=commonly] hotbar.8 minecraft:stick{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"探测感应:\",\"color\":\"white\",\"bold\":true,\"italic\":false},{\"text\":\"中\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}]}"}} 
/replaceitem entity @a[tag=danger] hotbar.8 minecraft:brick{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"探测感应:\",\"color\":\"white\",\"bold\":true,\"italic\":false},{\"text\":\"强\",\"color\":\"red\",\"bold\":true,\"italic\":false}]}"}} 

#人为行走时
execute at @a[team=Ghost] run tag @a[distance=..10,team=Hider] add danger
execute at @a[team=Ghost] run tag @a[distance=11..20,team=Hider] add commonly
execute at @a[team=Ghost] run tag @a[distance=21..,team=Hider] add security
#在使用摄像头的时候
execute at @a[team=Ghost] run tag @a[distance=..10,tag=sub] add danger
execute at @a[team=Ghost] run tag @a[distance=11..20,tag=sub] add commonly
execute at @a[team=Ghost] run tag @a[distance=21..,tag=sub] add security

execute at @e[tag=sub1,tag=danger] run tag @a[tag=Hider1] add danger
execute at @e[tag=sub2,tag=danger] run tag @a[tag=Hider2] add danger
execute at @e[tag=sub3,tag=danger] run tag @a[tag=Hider3] add danger
execute at @e[tag=sub4,tag=danger] run tag @a[tag=Hider4] add danger
execute at @e[tag=sub5,tag=danger] run tag @a[tag=Hider5] add danger
execute at @e[tag=sub6,tag=danger] run tag @a[tag=Hider6] add danger
execute at @e[tag=sub7,tag=danger] run tag @a[tag=Hider7] add danger

execute at @e[tag=sub1,tag=commonly] run tag @a[tag=Hider1] add commonly
execute at @e[tag=sub2,tag=commonly] run tag @a[tag=Hider2] add commonly
execute at @e[tag=sub3,tag=commonly] run tag @a[tag=Hider3] add commonly
execute at @e[tag=sub4,tag=commonly] run tag @a[tag=Hider4] add commonly
execute at @e[tag=sub5,tag=commonly] run tag @a[tag=Hider5] add commonly
execute at @e[tag=sub6,tag=commonly] run tag @a[tag=Hider6] add commonly
execute at @e[tag=sub7,tag=commonly] run tag @a[tag=Hider7] add commonly

execute at @e[tag=sub1,tag=security] run tag @a[tag=Hider1] add security
execute at @e[tag=sub2,tag=security] run tag @a[tag=Hider2] add security
execute at @e[tag=sub3,tag=security] run tag @a[tag=Hider3] add security
execute at @e[tag=sub4,tag=security] run tag @a[tag=Hider4] add security
execute at @e[tag=sub5,tag=security] run tag @a[tag=Hider5] add security
execute at @e[tag=sub6,tag=security] run tag @a[tag=Hider6] add security
execute at @e[tag=sub7,tag=security] run tag @a[tag=Hider7] add security

#重置
tag @a remove danger
tag @a remove commonly
tag @a remove security
