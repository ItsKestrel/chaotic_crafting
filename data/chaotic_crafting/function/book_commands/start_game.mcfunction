execute as @p[scores={cc_start_game=1}] at @s run function chaotic_crafting:start_game

scoreboard players set @s cc_start_game 0
scoreboard players enable @s cc_start_game