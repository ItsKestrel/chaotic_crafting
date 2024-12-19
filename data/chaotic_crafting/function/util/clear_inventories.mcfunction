
clear @a[tag=cc_player] *[!minecraft:custom_data={keep:true}]
execute as @e[type=marker,tag=cc_barrel_marker] at @s run data modify block ~ ~ ~ Items set value []
execute as @e[type=marker,tag=cc_chest_marker] at @s run data modify block ~ ~ ~ Items set value []