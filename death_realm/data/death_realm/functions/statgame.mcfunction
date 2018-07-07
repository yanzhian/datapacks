#分配队伍
team add Hider 人类
team add Ghost 幽灵
scoreboard objectives add Hh dummy 人类体力
scoreboard objectives add Gh dummy 幽灵体力
scoreboard objectives add GS minecraft.custom:minecraft.sprint_one_cm 幽灵奔跑
scoreboard objectives add Hs minecraft.custom:minecraft.sprint_one_cm 人类奔跑
scoreboard objectives add pickup minecraft.custom:minecraft.talked_to_villager 拾取
scoreboard objectives add MB dummy 目标
scoreboard objectives add Gc minecraft.custom:minecraft.sneak_time 幽灵潜行


team join Ghost @r
team join Hider @a[team=!Ghost]
tag @r[team=Hider] add hider1
tag @r[team=Hider,tag=!hider1] add hider2
tag @r[team=Hider,tag=!hider1,tag=!hider2] add hider3
tag @r[team=Hider,tag=!hider1,tag=!hider2,tag=!hider3] add hider4
tag @r[team=Hider,tag=!hider1,tag=!hider2,tag=!hider3,tag=!hider4] add hider5
tag @r[team=Hider,tag=!hider1,tag=!hider2,tag=!hider3,tag=!hider4,tag=!hider5] add hider6
tag @r[team=Hider,tag=!hider1,tag=!hider2,tag=!hider3,tag=!hider4,tag=!hider5,tag=!hider6] add hider7
tag @a[team=Ghost] add ghost
xp set @a 0 levels
replaceitem entity @a[team=Hider] armor.head minecraft:carved_pumpkin



#正常模式
tag @a[team=Hider] add pedestrian
tag @a[team=Ghost] add Sneak



#传送
tp @a[team=Hider] 16 41 78
tp @a[team=Ghost] 10 27 91
