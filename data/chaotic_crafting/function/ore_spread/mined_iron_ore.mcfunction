scoreboard players set @s cc_iron_ore_mined 0

execute as @e[type=marker,tag=iron_ore_spreader,tag=!iron_node] run execute at @s run execute unless block ~ ~ ~ iron_ore run kill @s