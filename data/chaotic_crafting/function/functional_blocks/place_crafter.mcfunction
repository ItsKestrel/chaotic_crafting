#tellraw @s {"text": "Placed Crafter."}
function chaotic_crafting:util/find_crafter/start_crafter_ray

#Marker
#execute as @e[type=marker,tag=new_crafter] run function chaotic_crafting:functional_blocks/sync_crafter_marker
execute as @e[type=marker,tag=new_crafter] run function chaotic_crafting:util/center_entity
#execute as @e[type=marker,tag=new_crafter] at @s run function chaotic_crafting:util/progress_bars/give_progress_bar


#Armor Stand
execute as @e[type=armor_stand,tag=new_crafter] run function chaotic_crafting:util/center_entity
execute as @e[type=armor_stand,tag=new_crafter] run function chaotic_crafting:functional_blocks/sync_crafter_marker
execute as @e[type=armor_stand,tag=new_crafter] at @s run function chaotic_crafting:util/progress_bars/give_progress_bar


execute as @e[type=marker,tag=new_crafter] run tag @s remove new_crafter
execute as @e[type=armor_stand,tag=new_crafter] run tag @s remove new_crafter
advancement revoke @s only chaotic_crafting:place_crafter