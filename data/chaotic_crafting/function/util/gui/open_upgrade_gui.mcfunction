function chaotic_crafting:util/gui/upgrades/rand_upgrade
execute if score #randUpgrade cc_upgrades matches 0 run execute as @e[type=marker,tag=cc_menu_item_1_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[0]
execute if score #randUpgrade cc_upgrades matches 1 run execute as @e[type=marker,tag=cc_menu_item_1_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[1]
execute if score #randUpgrade cc_upgrades matches 2 run execute as @e[type=marker,tag=cc_menu_item_1_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[2]
execute if score #randUpgrade cc_upgrades matches 3 run execute as @e[type=marker,tag=cc_menu_item_1_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[3]
execute if score #randUpgrade cc_upgrades matches 4 run execute as @e[type=marker,tag=cc_menu_item_1_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[4]

execute if score #randUpgrade cc_upgrades matches 0 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[0]
execute if score #randUpgrade cc_upgrades matches 1 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[1]
execute if score #randUpgrade cc_upgrades matches 2 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[2]
execute if score #randUpgrade cc_upgrades matches 3 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[3]
execute if score #randUpgrade cc_upgrades matches 4 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[4]


function chaotic_crafting:util/gui/upgrades/rand_upgrade
execute if score #randUpgrade cc_upgrades matches 0 run execute as @e[type=marker,tag=cc_menu_item_3_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[0]
execute if score #randUpgrade cc_upgrades matches 1 run execute as @e[type=marker,tag=cc_menu_item_3_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[1]
execute if score #randUpgrade cc_upgrades matches 2 run execute as @e[type=marker,tag=cc_menu_item_3_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[2]
execute if score #randUpgrade cc_upgrades matches 3 run execute as @e[type=marker,tag=cc_menu_item_3_marker] at @s run function chaotic_crafting:util/gui/upgrades/select_upgrade with entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[3]

execute if score #randUpgrade cc_upgrades matches 0 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[0]
execute if score #randUpgrade cc_upgrades matches 1 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[1]
execute if score #randUpgrade cc_upgrades matches 2 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[2]
execute if score #randUpgrade cc_upgrades matches 3 run data remove entity @e[type=marker,tag=cc_upgrade_data,limit=1] data.custom_data.upgrades[3]

function chaotic_crafting:util/gui/animations/bob/a/play_loop