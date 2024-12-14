tellraw @a {"text": "Spreading Iron Ore"}
#execute at @s unless block ~ ~ ~ iron_ore run kill @s

#randomly choose which side to spread
scoreboard players set $random cc_temp 0
scoreboard players set $min random 0
scoreboard players set $max random 5
execute run function random:uniform
execute store result score $random cc_temp run scoreboard players get $out random


execute if score $random cc_temp matches 0 run execute at @s run execute positioned ~1 ~ ~ if predicate chaotic_crafting:33_chance run execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[iron_ore_spreader],data:{name:"Iron Ore"}}
execute if score $random cc_temp matches 1 run execute at @s run execute positioned ~-1 ~ ~ if predicate chaotic_crafting:33_chance run execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[iron_ore_spreader],data:{name:"Iron Ore"}}
execute if score $random cc_temp matches 2 run execute at @s run execute positioned ~ ~1 ~ if predicate chaotic_crafting:33_chance run execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[iron_ore_spreader],data:{name:"Iron Ore"}}
execute if score $random cc_temp matches 3 run execute at @s run execute positioned ~ ~-1 ~ if predicate chaotic_crafting:33_chance run execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[iron_ore_spreader],data:{name:"Iron Ore"}}
execute if score $random cc_temp matches 4 run execute at @s run execute positioned ~ ~ ~1 if predicate chaotic_crafting:33_chance run execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[iron_ore_spreader],data:{name:"Iron Ore"}}
execute if score $random cc_temp matches 5 run execute at @s run execute positioned ~ ~ ~-1 if predicate chaotic_crafting:33_chance run execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:[iron_ore_spreader],data:{name:"Iron Ore"}}

execute as @e[type=marker,tag=iron_ore_spreader,tag=!iron_node] at @s run execute if predicate chaotic_crafting:66_chance run setblock ~ ~ ~ iron_ore
execute as @e[type=marker,tag=iron_ore_spreader,tag=!iron_node] at @s run execute if block ~ ~ ~ air run setblock ~ ~ ~ deepslate
execute as @e[type=marker,tag=iron_ore_spreader,tag=!iron_node] run execute at @s run execute unless block ~ ~ ~ iron_ore run kill @s

