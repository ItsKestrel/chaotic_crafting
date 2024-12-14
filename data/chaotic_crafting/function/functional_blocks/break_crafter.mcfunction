tellraw @s {"text": "Crafter Broken."}
scoreboard players set @s cc_crafter_broken 0

#Marker
execute as @e[type=marker,tag=crafter_marker] run execute at @s run execute unless block ~ ~ ~ crafter run function chaotic_crafting:functional_blocks/rm_marker_progress_bar

#Armor Stand
execute as @e[type=armor_stand,tag=crafter_marker] run execute at @s run execute unless block ~ ~ ~ crafter run function chaotic_crafting:functional_blocks/rm_marker_progress_bar