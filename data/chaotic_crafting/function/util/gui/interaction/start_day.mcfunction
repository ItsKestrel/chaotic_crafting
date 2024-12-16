advancement revoke @s only chaotic_crafting:menu_start_day
execute if entity @s[tag=cc_player] run execute as @e[type=interaction,tag=menu_start_day] run function chaotic_crafting:util/gui/functions/start_day
execute if entity @s[tag=cc_player] run tellraw @s {"text": "You must register as a player first."}