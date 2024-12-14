effect clear @e glowing

execute as @a at @s run tag @e[type=wandering_trader,distance=..3] add find_looking.candidate

execute as @a at @s run function find_looking:find

tag @e remove find_looking.candidate