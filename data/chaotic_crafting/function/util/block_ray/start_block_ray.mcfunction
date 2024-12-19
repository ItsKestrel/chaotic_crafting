tag @s add find_block
scoreboard players set #hit cc_block_ray 0
scoreboard players set #distance cc_block_ray 0

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function chaotic_crafting:util/block_ray/block_ray

tag @s remove find_crafter