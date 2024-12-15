#seat based spawning
#function chaotic_crafting:customer/spawn_seat_1

execute as @e[type=marker,tag=cc_customer_spawn] at @s run summon wandering_trader ~ ~ ~ {wander_target:[I;0,0,0],HandItems:[{},{}],Invulnerable:1b,Silent:1b,Tags:["new_customer","customer", "not_ordered"],Offers:{Recipes:[]}}
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[0] set from entity @e[type=marker,tag=cc_customer_rally,limit=1] Pos[0]
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[1] set from entity @e[type=marker,tag=cc_customer_rally,limit=1] Pos[1]
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[2] set from entity @e[type=marker,tag=cc_customer_rally,limit=1] Pos[2]

scoreboard players operation @e[tag=new_customer] cc_customers = $customers_spawned cc_customers

execute as @e[tag=new_customer] at @s run function chaotic_crafting:util/patience_bars/give_progress_bar
