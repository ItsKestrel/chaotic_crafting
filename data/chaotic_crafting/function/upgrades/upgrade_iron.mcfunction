scoreboard players set $iron_menu cc_upgrades 1
scoreboard players add $cc_menus_unlocked cc_settings 1
scoreboard players set $iron_ore_spread cc_settings 1
scoreboard players set $coal_deposit_spawn cc_settings 1

data modify entity @e[type=marker,tag=cc_trade_data,limit=1] data.custom_data.menus append value {menu:"chaotic_crafting:menu_iron_items"}