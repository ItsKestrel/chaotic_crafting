#Checks if an entity is found, and if so, runs the corresponding function.

execute if score #hit rm_marker_ray matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function cc_remove_marker:hit_entity