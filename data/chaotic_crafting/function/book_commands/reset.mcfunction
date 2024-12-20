execute as @p[scores={cc_reset=1}] at @s run function chaotic_crafting:reset

scoreboard players set @s cc_reset 0
scoreboard players enable @s cc_reset