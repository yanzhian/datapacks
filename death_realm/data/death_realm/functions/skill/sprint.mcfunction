scoreboard players add @a[scores={Hs=1..,Hh=..4000}] Hh 40
scoreboard players remove @a[scores={Hs=0..}] Hh 20
effect give @a[scores={Hs=1..,Hh=..999}] minecraft:speed 1 3 true
effect give @a[scores={Hs=1..,Hh=1000..2999}] minecraft:speed 1 2 true
effect give @a[scores={Hs=1..,Hh=3000..3999}] minecraft:speed 1 1 true
effect give @a[scores={Hh=4000}] minecraft:slowness 3 2 true