scoreboard players add @a[tag=gaming,scores={Sprint=1..,Power=..4000}] Power 40
scoreboard players remove @a[tag=gaming,scores={Power=20..}] Power 20
effect give @a[tag=gaming,scores={Sprint=1..,Power=..999}] minecraft:speed 1 2 true
effect give @a[tag=gaming,scores={Sprint=1..,Power=1000..2999}] minecraft:speed 1 1 true
effect give @a[tag=gaming,scores={Sprint=1..,Power=3000..3999}] minecraft:speed 1 0 true
effect give @a[tag=gaming,scores={Power=4000}] minecraft:slowness 4 2 true