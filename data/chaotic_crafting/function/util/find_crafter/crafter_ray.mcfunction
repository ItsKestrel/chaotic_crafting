#tellraw @a {"text": "Stepping Ray"}
execute if block ~ ~ ~ #chaotic_crafting:crafter run function chaotic_crafting:util/find_crafter/hit_crafter
scoreboard players add #distance cc_crafter_ray 1

#debug see ray
#particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~

execute if score #hit cc_crafter_ray matches 0 if score #distance cc_crafter_ray matches ..50 positioned ^ ^ ^0.1 run function chaotic_crafting:util/find_crafter/crafter_ray