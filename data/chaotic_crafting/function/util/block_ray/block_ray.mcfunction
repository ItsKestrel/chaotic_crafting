execute if block ~ ~ ~ #chaotic_crafting:crafter run function chaotic_crafting:util/find_crafter/hit_crafter
execute if block ~ ~ ~ #chaotic_crafting:barrel run function chaotic_crafting:util/block_ray/find_blocks/hit_barrel
execute if block ~ ~ ~ #chaotic_crafting:chest run function chaotic_crafting:util/block_ray/find_blocks/hit_chest

scoreboard players add #distance cc_block_ray 1

execute if score #hit cc_block_ray matches 0 if score #distance cc_block_ray matches ..50 positioned ^ ^ ^0.1 run function chaotic_crafting:util/block_ray/block_ray