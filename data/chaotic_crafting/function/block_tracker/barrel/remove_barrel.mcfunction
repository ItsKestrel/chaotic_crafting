#tellraw @s {"text": "Barrel Broken."}
scoreboard players set @s cc_barrel_broken 0

execute as @e[type=marker,tag=cc_barrel_marker] run execute at @s run execute unless block ~ ~ ~ barrel run kill @s
