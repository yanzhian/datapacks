#plz as flying player at @s to run this run
#use sb:Ticks to check player death time
#{Invisible:1b,Invulnerable:1b}
execute as @a[tag=dying] at @s positioned as @e[tag=dyingAS,distance=..1] run tp @s ~ ~ ~
scoreboard players add @e[tag=dyingAS] Death 1
kill @e[tag=dyingAS,scores={Death=68..}]