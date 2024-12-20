execute as @p[scores={cc_gen_workshop=1}] at @s run function chaotic_crafting:setup/spawn_workshop_stage1

scoreboard players set @s cc_gen_workshop 0
scoreboard players enable @s cc_gen_workshop