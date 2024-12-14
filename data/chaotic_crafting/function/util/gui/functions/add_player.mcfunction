#tellraw @a {"text": "ADDING PLAYER!"}
execute on target run execute if entity @s[tag=!cc_player] run function chaotic_crafting:players/new_player