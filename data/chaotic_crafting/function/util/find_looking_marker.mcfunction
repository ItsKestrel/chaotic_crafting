effect clear @e glowing

execute as @a at @s run tag @e[type=marker,tag=debug_marker,distance=..3] add find_looking.candidate

execute as @a at @s run function find_looking:find
#execute as @e[tag=find_looking.result] run effect give @s glowing 1 1 true
schedule function chaotic_crafting:util/find_looking_clear 1s

tag @e remove find_looking.candidate