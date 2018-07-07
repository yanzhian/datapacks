scoreboard players add @a[scores={Hs=1..,Hh=..4000}] Hh 40
scoreboard players remove @a[scores={Hh=20..}] Hh 20
effect give @a[scores={Hs=1..,Hh=..999}] minecraft:speed 1 2 true
effect give @a[scores={Hs=1..,Hh=1000..2999}] minecraft:speed 1 1 true
effect give @a[scores={Hs=1..,Hh=3000..3999}] minecraft:speed 1 0 true
scoreboard players set @a Hs 0
effect give @a[scores={Hh=4000}] minecraft:slowness 4 2 true