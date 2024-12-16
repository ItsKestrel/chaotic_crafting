#tellraw @a {"text": "Starting Day..."}
execute on target run execute if entity @s[tag=cc_player] run function chaotic_crafting:day_manager/start_day