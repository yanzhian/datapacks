#分配队伍
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



#分配纸条注意下删除纸条是name而不是tag
tag @e[tag=ZT,limit=12] add target
execute as @e[tag=ZT,tag=target] run data merge entity @s {HandItems:[{id:"minecraft:paper",Damage:0s,Count:1b,tag:{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"神秘的纸条\",\"color\":\"gold\",\"bold\":true}]}",Lore:["听说之安博士需要这个"]}}},{}]}
title @a title {"text":" "}
title @a subtitle {"text":"","extra":[{"text":"还剩下","bold":"true","color":"aqua"},{"score":{"name":"pLeft","objective":"pLeft"}},{"text":""},{"text":"张纸条","bold":"true","color":"aqua"}]}

#正常模式
#tag @a[team=Hider] add noCamera
#tag @a[team=Ghost] add Sneak



#传送
tp @a[team=Hider] 16 41 78
tp @a[team=Ghost] 10 27 91






#此类都为系统初始化开始分配队伍系统，重置体力等要素，缺啥改啥a 

