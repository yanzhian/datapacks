#被抓执行
tag @s remove caught
effect give @s minecraft:levitation 3 0 true
effect give @s minecraft:slowness 3 7 true
effect give @a[team=Ghost] minecraft:jump_boost 10 240 true
effect give @a[team=Ghost] minecraft:slowness 3 6 true
team join Peace @s
scoreboard players set @s Death 68
tag @s add dying