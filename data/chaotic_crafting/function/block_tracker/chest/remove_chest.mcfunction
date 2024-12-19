#tellraw @s {"text": "Chest Broken."}
scoreboard players set @s cc_chest_broken 0

execute as @e[type=marker,tag=cc_chest_marker] run execute at @s run execute unless block ~ ~ ~ chest run kill @s