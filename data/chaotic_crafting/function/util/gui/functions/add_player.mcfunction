execute on target run execute if entity @s[tag=!cc_player] run tellraw @a {"text": "Player Added"}
execute on target run execute if entity @s[tag=!cc_player] run function chaotic_crafting:players/new_player

execute on target run execute if entity @s[tag=cc_player] run tellraw @a {"text": "You are already playing."}