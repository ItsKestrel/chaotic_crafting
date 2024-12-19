execute if score $day_active cc_settings matches 1 run execute if score $oak_wood_pile_spawn cc_settings matches 1 run execute as @e[type=marker,tag=cc_oak_log_pile] at @s run place template chaotic_crafting:oak_log_pile_alt ~ ~ ~

execute if score $day_active cc_settings matches 1 run execute if score $all_wood_spawn cc_settings matches 1 run execute as @e[type=marker,tag=cc_birch_log_pile] at @s run place template chaotic_crafting:birch_log_pile ~ ~ ~
execute if score $day_active cc_settings matches 1 run execute if score $all_wood_spawn cc_settings matches 1 run execute as @e[type=marker,tag=cc_acacia_log_pile] at @s run place template chaotic_crafting:acacia_log_pile ~ ~ ~
execute if score $day_active cc_settings matches 1 run execute if score $all_wood_spawn cc_settings matches 1 run execute as @e[type=marker,tag=cc_cherry_log_pile] at @s run place template chaotic_crafting:cherry_log_pile ~ ~ ~
execute if score $day_active cc_settings matches 1 run execute if score $all_wood_spawn cc_settings matches 1 run execute as @e[type=marker,tag=cc_mangrove_log_pile] at @s run place template chaotic_crafting:mangrove_log_pile ~ ~ ~

execute if score $day_active cc_settings matches 1 run tellraw @a {"text": "A log delivery has arrived.", "color": "white"}
execute if score $day_active cc_settings matches 1 run execute if score $oak_wood_pile_spawn cc_settings matches 1 run schedule function chaotic_crafting:loop/wood_spawn 120s