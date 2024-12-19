scoreboard players set $wood_menu cc_upgrades 1
scoreboard players add $cc_menus_unlocked cc_settings 1
scoreboard players set $all_wood_spawn cc_settings 1

data modify entity @e[type=marker,tag=cc_trade_data,limit=1] data.custom_data.menus append value {menu:"chaotic_crafting:menu_wood_items"}