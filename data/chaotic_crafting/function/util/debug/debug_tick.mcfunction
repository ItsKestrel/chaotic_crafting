#execute if score $show_seats cc_settings matches 1 run particle dust{color:[1.000,0.000,0.000],scale:1} 0 62 10 0 1 0 1 10 normal
#execute if score $timer cc_timer matches 100 run execute as @e[type=marker,tag=crafter_lvl1] at @s run function chaotic_crafting:functional_blocks/crafter_lvl_1

execute at @e[type=marker,tag=debug_marker] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 1 0 1 10 normal

#execute at @e[type=marker,tag=iron_ore_spreader] run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0 1 0 1 10 normal
