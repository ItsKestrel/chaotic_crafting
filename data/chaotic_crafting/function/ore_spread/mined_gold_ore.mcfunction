scoreboard players set @s cc_gold_ore_mined 0

execute as @e[type=marker,tag=gold_ore_spreader,tag=!gold_node] run execute at @s run execute unless block ~ ~ ~ gold_ore run kill @s