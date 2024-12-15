execute as @e[type=marker,tag=cc_customer_spawn] at @s run summon wandering_trader ~ ~ ~ {wander_target:[I;0,0,0],HandItems:[{},{}],Invulnerable:1b,Silent:1b,Tags:["new_customer","customer", "not_ordered"],Offers:{Recipes:[]}}

scoreboard players set $random cc_item 0
scoreboard players set $min random 1
scoreboard players operation $max random = $cc_menus_unlocked cc_settings
execute run function random:uniform
execute store result score $random cc_item run scoreboard players get $out random


execute if score $random cc_item matches 1 run function chaotic_crafting:customer/spawn_trade_item with entity @e[type=marker,tag=cc_trade_data,limit=1] data.custom_data.menus[0]


data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[0] set from entity @e[type=marker,tag=cc_customer_rally,limit=1] Pos[0]
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[1] set from entity @e[type=marker,tag=cc_customer_rally,limit=1] Pos[1]
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[2] set from entity @e[type=marker,tag=cc_customer_rally,limit=1] Pos[2]

scoreboard players operation @e[tag=new_customer] cc_customers = $customers_spawned cc_customers

execute as @e[tag=new_customer] at @s run function chaotic_crafting:util/patience_bars/give_progress_bar
