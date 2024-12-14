tellraw @a {"text": "Stepping Ray"}

execute if score #hit rm_marker_ray matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#chaotic_crafting:cow,tag=!rm_ray,dx=0,sort=nearest] run function chaotic_crafting:util/rm_marker/check_hit_entity
scoreboard players add #distance rm_marker_ray 1

#debug see ray
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~

execute if score #hit rm_marker_ray matches 0 if score #distance rm_marker_ray matches ..50 positioned ^ ^ ^0.1 run function chaotic_crafting:util/rm_marker/ray