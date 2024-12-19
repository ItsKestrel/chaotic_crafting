#tellraw @a {"text": "Searching for Crafter."}
tag @s add find_crafter
scoreboard players set #hit cc_crafter_ray 0
scoreboard players set #distance cc_crafter_ray 0

#execute anchored eyes run function chaotic_crafting:util/find_crafter/crafter_ray
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function chaotic_crafting:util/find_crafter/crafter_ray

tag @s remove find_crafter