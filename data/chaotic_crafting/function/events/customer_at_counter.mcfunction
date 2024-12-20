execute as @e[type=marker,tag=cc_seat_1] at @s run execute as @e[type=wandering_trader,tag=customer,tag=seat_1,tag=!at_counter,tag=rally_patience,distance=..2.5] run execute on passengers run scoreboard players operation @s cc_patience = $ordering_patience cc_settings
execute as @e[type=marker,tag=cc_seat_1] at @s run tag @e[type=wandering_trader,tag=customer,tag=seat_1,tag=!at_counter,distance=..2.5] add at_counter
execute as @e[type=wandering_trader,tag=at_counter] run tag @s remove at_rally
execute as @e[type=wandering_trader,tag=at_counter] run data modify entity @s NoAI set value 1b

execute as @e[type=wandering_trader,tag=at_counter] run execute if score $bell_rang cc_customers matches 0 run playsound block.bell.use player @a
execute as @e[type=wandering_trader,tag=at_counter] run scoreboard players set $bell_rang cc_customers 1

tag @e[type=wandering_trader,tag=customer,tag=at_counter,tag=!ordering_patience] add ordering_patience
tag @e[type=wandering_trader,tag=customer,tag=at_counter,tag=ordering_patience] remove rally_patience