scoreboard players set @s cc_diamond_ore_mined 0

execute as @e[type=marker,tag=diamond_ore_spreader,tag=!diamond_node] run execute at @s run execute unless block ~ ~ ~ diamond_ore run kill @s