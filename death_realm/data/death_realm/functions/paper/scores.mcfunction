clear @s minecraft:paper{display:{Name:"{\"text\":\"\",\"extra\":[{\"text\":\"神秘的纸条\",\"color\":\"gold\",\"bold\":true}]}",Lore:["听说之安博士需要这个"]}}
scoreboard players add @s Papers 1
scoreboard players remove pLeft pLeft 1
title @a title {"text":" "}
title @a subtitle {"text":"","extra":[{"text":"还剩下","bold":"true","color":"aqua"},{"score":{"name":"pLeft","objective":"pLeft"}},{"text":""},{"text":"张纸条","bold":"true","color":"aqua"}]}
execute as @a at @s run playsound minecraft:library voice @a ~ ~ ~ 1 1