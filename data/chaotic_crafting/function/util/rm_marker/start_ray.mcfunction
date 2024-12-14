#Setting up the raycasting data.

tag @s add rm_ray
scoreboard players set #hit rm_marker_ray 0
scoreboard players set #distance rm_marker_ray 0

#Activating the raycast. This function will call itself until it is done.

function chaotic_crafting:util/rm_marker/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove rm_ray