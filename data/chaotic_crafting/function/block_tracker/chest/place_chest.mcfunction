#tellraw @s {"text": "Placed Chest."}
advancement revoke @s only chaotic_crafting:place_chest

function chaotic_crafting:util/block_ray/start_block_ray

execute as @e[type=marker,tag=new_chest] run function chaotic_crafting:util/center_entity
execute as @e[type=marker,tag=new_chest] run tag @s remove new_chest