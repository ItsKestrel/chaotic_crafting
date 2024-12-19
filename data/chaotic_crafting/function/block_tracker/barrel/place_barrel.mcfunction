#tellraw @s {"text": "Placed Barrel."}
advancement revoke @s only chaotic_crafting:place_barrel

function chaotic_crafting:util/block_ray/start_block_ray

execute as @e[type=marker,tag=new_barrel] run function chaotic_crafting:util/center_entity
execute as @e[type=marker,tag=new_barrel] run tag @s remove new_barrel

